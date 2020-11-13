import 'dart:convert' as convert;

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:trivia_app/features/trivia/domain/services/i_trivia_service.dart';
import 'package:trivia_app/features/trivia/infrastructure/services/trivia_service.dart';

Future<void> main([
  String baseApiEndpoint = 'https://opentdb.com/api.php',
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

  ITriviaService _triviaService;

  setUp(() {
    final httpClient = MockClient((request) async {
      return http.Response(convert.jsonEncode(_body), 200, headers: _headers);
    });
    _triviaService = TriviaService(
      client: httpClient,
      baseApiEndpoint: baseApiEndpoint,
    );
  });

  group('getQuestion', () {
    test(
        'should return remote data when the call to remote service is successful',
        () async {
      final response = await _triviaService.getQuestions(
        amount: 10,
        category: 9,
      );

      expect(response.statusCode, 200);
    });
  });
}
