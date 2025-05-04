import 'package:flutter/cupertino.dart';

class Question {
  final String text;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;
  final Color color;

  Question({
    required this.text,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    required this.color,
  });
}
