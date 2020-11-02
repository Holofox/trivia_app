import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/trivia_question.dart';

class TriviaQuestionResponse {
  const TriviaQuestionResponse({
    @required this.responseCode,
    @required this.results,
  });

  factory TriviaQuestionResponse.fromJson(Map<String, dynamic> json) {
    final results = json['results'] as List<dynamic>;
    final questions = results
        .map((dynamic q) => TriviaQuestion.fromJson(q as Map<String, dynamic>))
        .toList();
    return TriviaQuestionResponse(
      responseCode: json['response_code'] as int,
      results: questions,
    );
  }

  final int responseCode;
  final List<TriviaQuestion> results;
}
