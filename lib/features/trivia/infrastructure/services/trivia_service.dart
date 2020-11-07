import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/domain/services/i_trivia_service.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_difficulty.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question_type.dart';

@LazySingleton(as: ITriviaService)
class TriviaService implements ITriviaService {
  TriviaService();

  final http.Client _client = http.Client();

  static const String _baseApiEndpoint = 'https://opentdb.com/api.php';

  @override
  Future<http.Response> getQuestions({
    @required int amount,
    @required int category,
    QuestionDifficulty difficulty = QuestionDifficulty.easy,
    QuestionType type = QuestionType.boolean,
  }) {
    final query = 'amount=$amount&category=$category'
        '&difficulty=${describeEnum(difficulty)}&type=${describeEnum(type)}';
    return _client.get('$_baseApiEndpoint?$query');
  }

  @override
  @mustCallSuper
  void dispose() => _client.close();
}
