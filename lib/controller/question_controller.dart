import 'package:questionapp/data/questioins_data.dart';
import 'package:questionapp/model/question_model.dart';

class QuestionController {
  int currentpage = 0;
  int answer = 0;

  List<Question> get allQuestions => questions;

  void nextPage() {
    if (currentpage < questions.length - 1) {
      currentpage++;
    }
  }

  void previousPage() {
    if (currentpage > 0) {
      currentpage--;
    }
  }

  void reset() {
    currentpage = 0;
    answer = 0;
  }

  void updateScore(bool isCorrect) {
    if (isCorrect) answer++;
  }
}
