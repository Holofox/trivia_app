import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trivia_app/features/trivia/domain/repositories/i_trivia_repository.dart';
import 'package:trivia_app/features/trivia/infrastructure/models/question.dart';

part 'questions_bloc.freezed.dart';
part 'questions_event.dart';
part 'questions_state.dart';

@injectable
class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsBloc(this._repository) : super(QuestionsState.initial());

  final ITriviaRepository _repository;

  @override
  Stream<QuestionsState> mapEventToState(QuestionsEvent event) async* {
    yield* event.map(
      started: _mapStartedToState,
      answered: _mapAnsweredToState,
      restarted: _mapRestartedToState,
    );
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
