import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/blocs/questions/questions_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/pages/game_page.dart';
import 'package:trivia_app/features/trivia/presentation/pages/score_page.dart';
import 'package:trivia_app/features/trivia/presentation/widgets/loader.dart';
import 'package:trivia_app/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionsBloc>(
      create: (_) => getIt<QuestionsBloc>()..add(const QuestionsStarted()),
      child: BlocBuilder<QuestionsBloc, QuestionsState>(
        builder: (context, state) {
          if (state.currentQuestion == null) {
            return const Loader();
          }

          return Scaffold(
            body: state.isPlaying
                ? GamePage(state: state)
                : ScorePage(state: state),
          );
        },
      ),
    );
  }
}
