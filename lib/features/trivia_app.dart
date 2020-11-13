import 'package:flutter/material.dart';
import 'package:trivia_app/features/trivia/presentation/pages/trivia_page.dart';

class TriviaApp extends StatelessWidget {
  const TriviaApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.black,
        cardColor: const Color.fromARGB(255, 26, 28, 28),
      ),
      home: const TriviaPage(
        title: 'Quiz',
      ),
    );
  }
}
