import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:trivia_app/features/trivia/domain/repositories/i_trivia_repository.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';
import 'package:trivia_app/features/trivia/infrastructure/repositories/trivia_repository.dart';
import 'package:trivia_app/features/trivia/infrastructure/services/trivia_service.dart';

part 'questions_event.dart';
part 'questions_state.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsBloc() : super(QuestionsState.initial());

  final ITriviaRepository _repository = TriviaRepository(
    TriviaService(client: http.Client()),
  );

  @override
  Stream<QuestionsState> mapEventToState(QuestionsEvent event) async* {
    if (event is QuestionsStarted) {
      yield* _mapStartedToState(event);
    } else if (event is QuestionAnswered) {
      yield* _mapAnsweredToState(event);
    } else if (event is QuestionsRestarted) {
      yield* _mapRestartedToState(event);
    }
  }

  Stream<QuestionsState> _mapStartedToState(QuestionsStarted event) async* {
    yield state.copyWith(isLoading: true);

    final result = await _repository.getQuestions(
      amount: 100,
      category: 0,
    );

    yield state.copyWith(
      currentQuestion: result.results.removeAt(0),
      questions: result.results,
      isLoading: false,
    );
  }

  Stream<QuestionsState> _mapAnsweredToState(QuestionAnswered event) async* {
    final isCorrectAnswer = state.currentQuestion.answer == event.answer;
    final score = state.score + (isCorrectAnswer ? 10 : 0);

    yield state.copyWith(
      currentQuestion: state.questions.removeAt(0),
      questions: state.questions,
      isPlaying: isCorrectAnswer,
      score: score,
    );
  }

  Stream<QuestionsState> _mapRestartedToState(QuestionsRestarted event) async* {
    yield state.copyWith(
      isPlaying: true,
      score: 0,
    );
  }
}
