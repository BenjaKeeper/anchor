import 'package:flutter_test/flutter_test.dart';

import 'package:anchor_wellness/data/openai_client.dart';

void main() {
  group('OpenAIClient', () {
    test('initializes with explicit key', () {
      final client = OpenAIClient(apiKey: 'explicit-key');
      expect(client, isNotNull);
    });
  });
}
