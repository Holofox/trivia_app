import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/domain/services/i_trivia_service.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_difficulty.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_type.dart';

class TriviaService implements ITriviaService {
  const TriviaService({
    @required this.client,
    @required this.baseApiEndpoint,
  });

  final http.Client client;

  final String baseApiEndpoint;

  @override
  @mustCallSuper
  void dispose() => client.close();

  @override
  Future<http.Response> getQuestions({
    @required int amount,
    @required int category,
    QuestionDifficulty difficulty = QuestionDifficulty.easy,
    QuestionType type = QuestionType.boolean,
  }) {
    final query = 'amount=$amount&category=$category'
        '&difficulty=${describeEnum(difficulty)}&type=${describeEnum(type)}';
    return client.get('$baseApiEndpoint?$query');
  }
}
