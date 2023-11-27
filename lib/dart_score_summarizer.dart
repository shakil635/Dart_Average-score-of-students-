/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:math';

export 'src/dart_score_summarizer_base.dart';

double averageHighScores(List<int> scores) {
  if (scores.isEmpty) {
    return 0;
  }
  int count = 0;
  final scores75 = scores.where((value) => value > 75);
  if (scores75.isEmpty) {
    return 0;
  }

  return scores75.fold(0, (previousValue, element) {
        count++;
        return previousValue + element;
      }) /
      count;
}

void main() {
  final scores = [80, 85, 90, 95];
  print(averageHighScores(scores));
}


/*
Practice Question 3: Score Summarizer
Consider the following list of student scores:

1
final scores = [88, 76, 90, 59, 93, 81, 74, 66];
Write an anonymous function using Dart’s higher-order 
functions to calculate the average 
score of students who scored above 75.
 */