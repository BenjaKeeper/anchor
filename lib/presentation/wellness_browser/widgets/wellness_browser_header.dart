import 'package:flutter/material.dart';

/// Header widget for wellness browser showing greeting and context
class WellnessBrowserHeader extends StatelessWidget {
  final String greeting;
  final String contextMessage;
  final String filterSummary;

  const WellnessBrowserHeader({
    super.key,
    required this.greeting,
    required this.contextMessage,
    required this.filterSummary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greeting
          Text(
            greeting,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),

          // Context message
          Text(
            contextMessage,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.3,
            ),
          ),
          const SizedBox(height: 12),

          // Filter summary with icon
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue[100]!),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.blue[700]),
                const SizedBox(width: 6),
                Text(
                  filterSummary,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
