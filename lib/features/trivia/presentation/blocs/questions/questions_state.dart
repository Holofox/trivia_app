part of 'questions_bloc.dart';

@freezed
abstract class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    @required List<Question> questions,
    @nullable Question currentQuestion,
    @required bool isLoading,
    @required bool isPlaying,
    @required int score,
  }) = _QuestionsState;

  factory QuestionsState.initial() {
    return const _QuestionsState(
      questions: <Question>[],
      isLoading: false,
      isPlaying: true,
      score: 0,
    );
  }
}
