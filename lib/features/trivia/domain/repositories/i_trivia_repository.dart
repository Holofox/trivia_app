import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_difficulty.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_response.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_type.dart';

abstract class ITriviaRepository {
  Future<QuestionResponse> getQuestions({
    @required int amount,
    @required int category,
    QuestionDifficulty difficulty = QuestionDifficulty.easy,
    QuestionType type = QuestionType.boolean,
  });

  void dispose();
}
