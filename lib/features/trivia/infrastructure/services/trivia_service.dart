import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:trivia_app/features/trivia/domain/services/i_trivia_service.dart';

class TriviaService implements ITriviaService {
  const TriviaService(this._client, this._baseApiEndpoint);

  final http.Client _client;

  final String _baseApiEndpoint;

  @override
  Future<http.Response> getQuestion({
    @required int amount,
    @required int category,
    String difficulty = 'easy',
    String type = 'boolean',
  }) {
    final query = 'amount=$amount&category=$category'
        '&difficulty=$difficulty&type=$type';
    return _client.get('$_baseApiEndpoint?$query');
  }

  @override
  @mustCallSuper
  void dispose() => _client.close();
}
