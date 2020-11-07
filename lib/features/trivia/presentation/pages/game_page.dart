import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipeable_card/swipeable_card.dart';
import 'package:trivia_app/features/trivia/presentation/blocs/questions/questions_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/pages/score_page.dart';
import 'package:trivia_app/features/trivia/presentation/widgets/question_card.dart';
import 'package:trivia_app/main.dart';

class GamePage extends StatelessWidget {
  const GamePage({
    Key key,
    @required this.state,
  }) : super(key: key);

  final QuestionsState state;

  static final _cardController = SwipeableWidgetController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40.0),
        Text(
          '⭐️ ${state.score}',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).accentColor,
          ),
        ),
        SwipeableWidget(
          cardController: _cardController,
          onLeftSwipe: () => setAnswer(context: context, answer: false),
          onRightSwipe: () => setAnswer(context: context, answer: true),
          nextCards: List.generate(
            state.questions.length,
            (index) => Center(
              child: QuestionCard(
                question: state.questions[index],
              ),
            ),
          ).reversed.toList(),
          child: QuestionCard(
            question: state.currentQuestion,
            onAnswered: (answer) {
              if (answer) {
                _cardController.triggerSwipeRight();
              } else {
                _cardController.triggerSwipeLeft();
              }
            },
          ),
        ),
      ],
    );
  }

  void setAnswer({
    @required BuildContext context,
    @required bool answer,
    bool triggerSwipe = false,
  }) {
    final answered = QuestionAnswered(answer: answer);
    context.bloc<QuestionsBloc>().add(answered);
  }
}
