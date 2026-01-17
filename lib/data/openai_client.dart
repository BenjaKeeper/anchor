import 'dart:convert';
import 'package:http/http.dart' as http;

/// Client for interacting with OpenAI API
class OpenAIClient {
  static const String _baseUrl = 'https://api.openai.com/v1';
  final String? _apiKey;

  OpenAIClient({String? apiKey})
    : _apiKey = apiKey ?? const String.fromEnvironment('OPENAI_API_KEY');

  /// Generate a chat completion
  Future<Map<String, dynamic>> chatCompletion({
    required List<Map<String, String>> messages,
    String model = 'gpt-4-turbo-preview',
    double temperature = 0.7,
    int maxTokens = 500,
  }) async {
    // If no API key is provided, return a mock response for demo purposes
    if (_apiKey == null || _apiKey.isEmpty) {
      _log('Warning: No OpenAI API key found. Using mock response.');
      await Future.delayed(
        const Duration(seconds: 1),
      ); // Simulate network delay
      return _generateMockResponse(messages);
    }

    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          'model': model,
          'messages': messages,
          'temperature': temperature,
          'max_tokens': maxTokens,
        }),
      );

      if (response.statusCode == 200) {
        return jsonDecode(utf8.decode(response.bodyBytes));
      } else {
        throw Exception(
          'OpenAI API Error: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      _log('Error calling OpenAI API: $e');
      rethrow;
    }
  }

  void _log(String message) {
    // ignore: avoid_print
    print('[OpenAIClient] $message');
  }

  /// Generate a context-aware mock response when no API key is present
  Map<String, dynamic> _generateMockResponse(
    List<Map<String, String>> messages,
  ) {
    final lastUserMessage = messages.lastWhere(
      (m) => m['role'] == 'user',
      orElse: () => {'content': ''},
    );

    String content =
        "I'm currently running in demo mode (no API key configured). "
        "I can help you plan your wellness routine based on your schedule. "
        "Try asking 'What should I do in Miami?' or 'Book yoga for tomorrow'.";

    final msg = lastUserMessage['content']?.toLowerCase() ?? '';

    if (msg.contains('miami')) {
      content =
          "For Miami, I found a great options:\n\n"
          "📍 Bayfront Park Run (Morning)\n"
          "Why: Perfect temperature and you know this route.\n\n"
          "Would you like me to add this to your calendar?";
    } else if (msg.contains('book') || msg.contains('yes')) {
      content =
          "Done! ✓\n\n"
          "- Bayfront Park Run - Wed 7:00am (added to calendar)\n\n"
          "I'll remind you the night before. Enjoy your run! 🏃";
    }

    return {
      'id': 'mock-response-${DateTime.now().millisecondsSinceEpoch}',
      'object': 'chat.completion',
      'created': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      'model': 'mock-gpt-4',
      'choices': [
        {
          'index': 0,
          'message': {'role': 'assistant', 'content': content},
          'finish_reason': 'stop',
        },
      ],
      'usage': {'display': 'Mock Usage'},
    };
  }
}
