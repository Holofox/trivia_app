import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipeable_card/swipeable_card.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';
import 'package:trivia_app/features/trivia/presentation/blocs/questions/questions_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/widgets/question_card.dart';

class GamePage extends StatelessWidget {
  const GamePage({
    Key key,
    @required this.currentQuestion,
    @required this.questions,
    @required this.score,
  }) : super(key: key);

  final Question currentQuestion;
  final List<Question> questions;
  final int score;

  static final _cardController = SwipeableWidgetController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40.0),
        Text(
          '⭐️ $score',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).accentColor,
          ),
        ),
        SwipeableWidget(
          cardController: _cardController,
          onLeftSwipe: () => _setAnswer(context: context, answer: false),
          onRightSwipe: () => _setAnswer(context: context, answer: true),
          nextCards: List.generate(
            questions.length,
            (index) => Center(
              child: QuestionCard(
                question: questions[index],
              ),
            ),
          ).reversed.toList(),
          child: QuestionCard(
            question: currentQuestion,
            onAnswered: _onAnswered,
          ),
        ),
      ],
    );
  }

  void _onAnswered(bool answer) {
    if (answer) {
      _cardController.triggerSwipeRight();
    } else {
      _cardController.triggerSwipeLeft();
    }
  }

  void _setAnswer({
    @required BuildContext context,
    @required bool answer,
  }) {
    final answered = QuestionAnswered(answer: answer);
    context.bloc<QuestionsBloc>().add(answered);
  }
}
