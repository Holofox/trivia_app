import 'package:flutter/material.dart';
import 'package:trivia_app/features/trivia/presentation/pages/trivia_page.dart';

class TriviaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TriviaPage(title: 'Trivia App'),
    );
  }
}