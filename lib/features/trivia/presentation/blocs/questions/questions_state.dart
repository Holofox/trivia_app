part of 'questions_bloc.dart';

class QuestionsState {
  const QuestionsState({
    @required this.questions,
    @required this.isLoading,
    @required this.isPlaying,
    @required this.score,
    this.currentQuestion,
  });

  factory QuestionsState.initial() {
    return const QuestionsState(
      questions: <Question>[],
      isLoading: false,
      isPlaying: true,
      score: 0,
    );
  }

  final List<Question> questions;
  final Question currentQuestion;
  final bool isLoading;
  final bool isPlaying;
  final int score;

  QuestionsState copyWith({
    List<Question> questions,
    Question currentQuestion,
    bool isLoading,
    bool isPlaying,
    int score,
  }) {
    return QuestionsState(
      questions: questions ?? this.questions,
      currentQuestion: currentQuestion ?? this.currentQuestion,
      isLoading: isLoading ?? this.isLoading,
      isPlaying: isPlaying ?? this.isPlaying,
      score: score ?? this.score,
    );
  }
}
