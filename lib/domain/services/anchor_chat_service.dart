import 'package:uuid/uuid.dart';
import '../../data/openai_client.dart';
import '../models/chat_models.dart';
import '../models/proactive_models.dart';
import '../models/wellness_models.dart';
import '../../data/mock_wellness_data.dart';

/// Service to manage chat interactions with ANCHOR AI
class AnchorChatService {
  final OpenAIClient _client;
  final _uuid = const Uuid();

  AnchorChatService({OpenAIClient? client})
    : _client = client ?? OpenAIClient();

  /// Send a message to ANCHOR and get a response
  Future<ChatMessage> chat(
    String userMessage,
    List<ChatMessage> history,
    AnchorContext context,
  ) async {
    // 1. Build the prompt with system instructions and user context
    final messages = _buildPromptMessages(userMessage, history, context);

    // 2. Call OpenAI API
    try {
      final response = await _client.chatCompletion(messages: messages);

      // 3. Parse response
      final choice = response['choices'][0];
      final content = choice['message']['content'] as String;

      // 4. Extract structured data (wellness options, bookings)
      final metadata = _parseResponseMetadata(content, context);

      return ChatMessage(
        id: _uuid.v4(),
        role: MessageRole.assistant,
        content: content,
        timestamp: DateTime.now(),
        metadata: metadata,
      );
    } catch (e) {
      // Fallback usage if API fails
      return ChatMessage(
        id: _uuid.v4(),
        role: MessageRole.assistant,
        content:
            "I'm having trouble connecting right now. Please try again in a moment.",
        timestamp: DateTime.now(),
      );
    }
  }

  List<Map<String, String>> _buildPromptMessages(
    String userMessage,
    List<ChatMessage> history,
    AnchorContext context,
  ) {
    final systemPrompt = _buildSystemPrompt();
    final contextPrompt = _buildContextPrompt(context);

    final apiMessages = <Map<String, String>>[
      {'role': 'system', 'content': '$systemPrompt\n\n$contextPrompt'},
    ];

    // Add recent history (last 10 messages to save tokens)
    final recentHistory = history.length > 10
        ? history.sublist(history.length - 10)
        : history;

    for (final msg in recentHistory) {
      apiMessages.add({'role': msg.role.apiName, 'content': msg.content});
    }

    // Add current user message
    apiMessages.add({'role': 'user', 'content': userMessage});

    return apiMessages;
  }

  MessageMetadata _parseResponseMetadata(
    String content,
    AnchorContext context,
  ) {
    // Simple heuristic parsing for demo purposes
    // In a real app, we'd use function calling or JSON mode

    final lowerContent = content.toLowerCase();
    final wellnessOptions = <WellnessOption>[];

    // Check if response mentions specific cities to attach mock options
    // This allows the UI to show rich cards even if the LLM just talks about them
    if (lowerContent.contains('miami')) {
      wellnessOptions.addAll(MockWellnessData.getOptionsForCity('miami'));
    } else if (lowerContent.contains('nyc') ||
        lowerContent.contains('new york')) {
      wellnessOptions.addAll(MockWellnessData.getOptionsForCity('nyc'));
    } else if (lowerContent.contains('cdmx') ||
        lowerContent.contains('mexico')) {
      wellnessOptions.addAll(MockWellnessData.getOptionsForCity('cdmx'));
    } else if (lowerContent.contains('austin')) {
      wellnessOptions.addAll(MockWellnessData.getOptionsForCity('austin'));
    }

    // Check for booking confirmation
    final isBooking =
        lowerContent.contains('booked') ||
        lowerContent.contains('added to calendar') ||
        lowerContent.contains('confirmed');

    return MessageMetadata(
      wellnessOptions: wellnessOptions,
      isBookingConfirmation: isBooking,
      suggestedActions: isBooking ? [] : ['Book now', 'Tell me more'],
    );
  }

  String _buildSystemPrompt() {
    return """
You are ANCHOR, a wellness planning AI assistant for frequent travelers.

PERSONALITY:
- Proactive but respectful of user's autonomy
- Data-driven but conversational
- Supportive without being preachy
- Action-oriented - find solutions and execute them

YOUR GOAL:
Help users maintain their wellness routine despite constant travel by:
1. Noticing when they're trending toward burnout
2. Suggesting specific options near where they'll be
3. Booking/scheduling for them when they agree

RULES:
- Always reference specific data when making suggestions
- Explain WHY you're suggesting something
- Give 2-3 options, not 10
- Make it easy to say yes
- If user seems stressed, simplify your suggestions
""";
  }

  String _buildContextPrompt(AnchorContext context) {
    // Serialize context into a readable string for the LLM
    final buffer = StringBuffer();
    buffer.writeln("CURRENT CONTEXT:");

    if (context.stressAnalysis != null) {
      buffer.writeln("- Stress Score: ${context.stressAnalysis!.stressScore}");
      buffer.writeln(
        "- Burnout Risk: ${context.stressAnalysis!.burnoutRisk.displayName}",
      );
    }

    if (context.upcomingSchedule != null) {
      buffer.writeln(
        "- Upcoming Travel Days: ${context.upcomingSchedule!.travelDays}",
      );
      buffer.writeln(
        "- Meeting Density: ${(context.upcomingSchedule!.meetingDensity * 100).toStringAsFixed(0)}%",
      );
    }

    if (context.wellnessOptions.isNotEmpty) {
      buffer.writeln("- Available Options Nearby:");
      for (final opt in context.wellnessOptions) {
        buffer.writeln(
          "  * ${opt.name} (${opt.type.displayName}): ${opt.whyRecommended}",
        );
      }
    }

    return buffer.toString();
  }
}
