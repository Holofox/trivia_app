import 'package:html_unescape/html_unescape.dart';
import 'package:meta/meta.dart';

class Question {
  const Question({
    @required this.category,
    @required this.type,
    @required this.difficulty,
    @required this.question,
    @required this.answer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      category: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
      question: HtmlUnescape().convert(json['question'] as String),
      answer: json['correct_answer'] == 'True',
    );
  }

  final String category;
  final String type;
  final String difficulty;
  final String question;
  final bool answer;
}
