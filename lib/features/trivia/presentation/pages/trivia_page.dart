import 'package:flutter/material.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';
import 'package:trivia_app/features/trivia/presentation/pages/game_page.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final questions = <Question>[
     const Question(
        answer: true,
        category: 'category',
        difficulty: 'difficulty',
        question: 'my question',
        type: 'type',
      ),
    ];
    return Scaffold(
      body: GamePage(
        currentQuestion: questions[0],
        questions: questions,
        score: 5,
      ),
    );
  }
}
