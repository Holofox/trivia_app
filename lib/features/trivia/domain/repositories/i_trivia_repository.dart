import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/trivia_question_response.dart';

abstract class ITriviaRepository {
  Future<TriviaQuestionResponse> getQuestion({
    @required int amount,
    @required int category,
    String difficulty = 'easy',
    String type = 'boolean',
  });

  void dispose();
}
