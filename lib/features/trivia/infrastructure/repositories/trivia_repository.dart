import 'dart:convert' as convert;

import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/domain/repositories/i_trivia_repository.dart';
import 'package:trivia_app/features/trivia/domain/services/i_trivia_service.dart';
import 'package:trivia_app/features/trivia/infrastructure/exceptions/trivia_repository_exception.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_difficulty.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_response.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_type.dart';

class TriviaRepository implements ITriviaRepository {
  const TriviaRepository(this._triviaService);
  final ITriviaService _triviaService;

  @override
  Future<QuestionResponse> getQuestions({
    @required int amount,
    int category,
    QuestionDifficulty difficulty = QuestionDifficulty.easy,
    QuestionType type = QuestionType.boolean,
  }) async {
    try {
      final response = await _triviaService.getQuestions(
        amount: amount,
        category: category,
        difficulty: difficulty,
        type: type,
      );
      if (response.statusCode == 200) {
        final json = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return QuestionResponse.fromJson(json);
      } else {
        throw TriviaRepositoryException(
          'Request failed with status: ${response.statusCode}',
        );
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      throw const TriviaRepositoryException(
        "Can't get question, try again later!",
      );
    }
  }

  @override
  void dispose() => _triviaService.dispose();
}
