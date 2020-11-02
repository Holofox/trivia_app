import 'package:meta/meta.dart';

class TriviaQuestion {
  const TriviaQuestion({
    @required this.category,
    @required this.type,
    @required this.difficulty,
    @required this.question,
    @required this.itsTrue,
  });

  factory TriviaQuestion.fromJson(Map<String, dynamic> json) {
    return TriviaQuestion(
      category: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
      question: json['question'] as String,
      itsTrue: json['correct_answer'] == 'True',
    );
  }

  final String category;
  final String type;
  final String difficulty;
  final String question;
  final bool itsTrue;
}
