import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

abstract class ITriviaService {
  Future<http.Response> getQuestion({
    @required int amount,
    @required int category,
    String difficulty = 'easy',
    String type = 'boolean',
  });

  void dispose();
}
