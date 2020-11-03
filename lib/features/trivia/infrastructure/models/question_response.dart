import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';

class QuestionResponse {
  const QuestionResponse({
    @required this.responseCode,
    @required this.results,
  });

  factory QuestionResponse.fromJson(Map<String, dynamic> json) {
    final results = json['results'] as List<dynamic>;
    final questions = results
        .map((dynamic q) => Question.fromJson(q as Map<String, dynamic>))
        .toList();
    return QuestionResponse(
      responseCode: json['response_code'] as int,
      results: questions,
    );
  }

  final int responseCode;
  final List<Question> results;
}
