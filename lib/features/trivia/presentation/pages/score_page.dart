import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivia_app/features/trivia/presentation/blocs/questions/questions_bloc.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({
    Key key,
    @required this.state,
  }) : super(key: key);

  final QuestionsState state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Game over',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          ),
          const SizedBox(height: 30.0),
          Text(
            '⭐️ ${state.score}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          ),
          const SizedBox(height: 20.0),
          OutlineButton(
            onPressed: () => _restartTapped(context),
            child: Text(
              'Play again',
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _restartTapped(BuildContext context) {
    final bloc = context.bloc<QuestionsBloc>();
    bloc.add(const QuestionsRestarted());
  }
}
