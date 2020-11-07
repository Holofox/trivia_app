import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:trivia_app/features/trivia_app.dart';
import 'package:trivia_app/main.config.dart';

final GetIt getIt = GetIt.instance;

Future<void> main() async {
  await initializeInjection();
  runApp(const TriviaApp());
}

@injectableInit
Future<GetIt> initializeInjection() async {
  return $initGetIt(getIt);
}
