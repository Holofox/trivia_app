import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/blocs/questions/questions_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/pages/game_page.dart';
import 'package:trivia_app/features/trivia/presentation/pages/score_page.dart';
import 'package:trivia_app/features/trivia/presentation/widgets/loader.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionsBloc>(
      create: (_) => QuestionsBloc()..add(const QuestionsStarted()),
      child: BlocBuilder<QuestionsBloc, QuestionsState>(
        builder: _buildPage,
      ),
    );
  }

  Widget _buildPage(BuildContext context, QuestionsState state) {
    if (state.currentQuestion == null) {
      return const Loader();
    }

    return Scaffold(
      body: state.isPlaying
          ? GamePage(
              currentQuestion: state.currentQuestion,
              questions: state.questions,
              score: state.score,
            )
          : ScorePage(score: state.score),
    );
  }
}
