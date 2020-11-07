part of 'questions_bloc.dart';

@freezed
abstract class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.started() = QuestionsStarted;

  const factory QuestionsEvent.answered({
    @required bool answer,
  }) = QuestionAnswered;

  const factory QuestionsEvent.restarted() = QuestionsRestarted;
}
