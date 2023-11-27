import 'package:dart_score_summarizer/dart_score_summarizer.dart';
import 'package:test/test.dart';

void main() {
  group('Score Summarizer', () {
    test('Average score of students scoring above 75', () {
      final scores = [88, 76, 90, 59, 93, 81, 74, 66];
      expect(averageHighScores(scores), closeTo(85.6, 0.1));
    });

    test('Empty list returns zero', () {
      List<int> scores = [];
      expect(averageHighScores(scores), equals(0));
    });

    test('All scores below threshold', () {
      final scores = [50, 60, 70, 65];
      expect(averageHighScores(scores), equals(0));
    });

    test('All scores above threshold', () {
      final scores = [80, 85, 90, 95];
      expect(averageHighScores(scores), closeTo(87.5, 0.1));
    });

    test('Single score above threshold', () {
      final scores = [50, 60, 70, 90];
      expect(averageHighScores(scores), equals(90));
    });
  });
}
