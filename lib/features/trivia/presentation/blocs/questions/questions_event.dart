part of 'questions_bloc.dart';

abstract class QuestionsEvent {
  const QuestionsEvent();
}

class QuestionsStarted extends QuestionsEvent {
  const QuestionsStarted();
}

class QuestionAnswered extends QuestionsEvent {
  const QuestionAnswered({@required this.answer});

  final bool answer;
}

class QuestionsRestarted extends QuestionsEvent {
  const QuestionsRestarted();
}
