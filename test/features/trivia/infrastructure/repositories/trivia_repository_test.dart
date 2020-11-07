import 'dart:convert' as convert;

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:trivia_app/features/trivia/domain/repositories/i_trivia_repository.dart';
import 'package:trivia_app/features/trivia/infrastructure/repositories/trivia_repository.dart';
import 'package:trivia_app/features/trivia/infrastructure/services/trivia_service.dart';

Future<void> main([
  String baseApiEndPoint = 'https://opentdb.com/api.php',
]) async {
  const _headers = {'content-type': 'application/json'};

  const _body = {
    'response_code': 0,
    'results': [
      {
        'category': 'General Knowledge',
        'type': 'boolean',
        'difficulty': 'easy',
        'question': 'French is an official language in Canada.',
        'correct_answer': 'True',
        'incorrect_answers': ['False']
      },
      {
        'category': 'General Knowledge',
        'type': 'boolean',
        'difficulty': 'easy',
        'question':
            'A scientific study on peanuts in bars found traces of over 100 unique specimens of urine.',
        'correct_answer': 'False',
        'incorrect_answers': ['True']
      },
    ]
  };

  ITriviaRepository _triviaRepository;

  setUp(() {
    final httpClient = MockClient((request) async {
      return http.Response(convert.jsonEncode(_body), 200, headers: _headers);
    });
    final triviaService = TriviaService(); //httpClient, baseApiEndPoint);
    _triviaRepository = TriviaRepository(triviaService);
  });

  group('getQuestion', () {
    test(
        'should return remote data when the call to remote data source is successfull',
        () async {
      final questions = await _triviaRepository.getQuestions(
        amount: 10,
        category: 9,
      );

      expect(questions.responseCode, 0);
      expect(questions.results.isNotEmpty, true);
    });
  });
}
