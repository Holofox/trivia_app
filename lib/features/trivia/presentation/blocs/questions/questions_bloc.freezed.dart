// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuestionsEventTearOff {
  const _$QuestionsEventTearOff();

// ignore: unused_element
  QuestionsStarted started() {
    return const QuestionsStarted();
  }

// ignore: unused_element
  QuestionAnswered answered({@required bool answer}) {
    return QuestionAnswered(
      answer: answer,
    );
  }

// ignore: unused_element
  QuestionsRestarted restarted() {
    return const QuestionsRestarted();
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionsEvent = _$QuestionsEventTearOff();

/// @nodoc
mixin _$QuestionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result answered(bool answer),
    @required Result restarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result answered(bool answer),
    Result restarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(QuestionsStarted value),
    @required Result answered(QuestionAnswered value),
    @required Result restarted(QuestionsRestarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(QuestionsStarted value),
    Result answered(QuestionAnswered value),
    Result restarted(QuestionsRestarted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $QuestionsEventCopyWith<$Res> {
  factory $QuestionsEventCopyWith(
          QuestionsEvent value, $Res Function(QuestionsEvent) then) =
      _$QuestionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsEventCopyWithImpl<$Res>
    implements $QuestionsEventCopyWith<$Res> {
  _$QuestionsEventCopyWithImpl(this._value, this._then);

  final QuestionsEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionsEvent) _then;
}

/// @nodoc
abstract class $QuestionsStartedCopyWith<$Res> {
  factory $QuestionsStartedCopyWith(
          QuestionsStarted value, $Res Function(QuestionsStarted) then) =
      _$QuestionsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsStartedCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements $QuestionsStartedCopyWith<$Res> {
  _$QuestionsStartedCopyWithImpl(
      QuestionsStarted _value, $Res Function(QuestionsStarted) _then)
      : super(_value, (v) => _then(v as QuestionsStarted));

  @override
  QuestionsStarted get _value => super._value as QuestionsStarted;
}

/// @nodoc
class _$QuestionsStarted implements QuestionsStarted {
  const _$QuestionsStarted();

  @override
  String toString() {
    return 'QuestionsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuestionsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result answered(bool answer),
    @required Result restarted(),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result answered(bool answer),
    Result restarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(QuestionsStarted value),
    @required Result answered(QuestionAnswered value),
    @required Result restarted(QuestionsRestarted value),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(QuestionsStarted value),
    Result answered(QuestionAnswered value),
    Result restarted(QuestionsRestarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class QuestionsStarted implements QuestionsEvent {
  const factory QuestionsStarted() = _$QuestionsStarted;
}

/// @nodoc
abstract class $QuestionAnsweredCopyWith<$Res> {
  factory $QuestionAnsweredCopyWith(
          QuestionAnswered value, $Res Function(QuestionAnswered) then) =
      _$QuestionAnsweredCopyWithImpl<$Res>;
  $Res call({bool answer});
}

/// @nodoc
class _$QuestionAnsweredCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements $QuestionAnsweredCopyWith<$Res> {
  _$QuestionAnsweredCopyWithImpl(
      QuestionAnswered _value, $Res Function(QuestionAnswered) _then)
      : super(_value, (v) => _then(v as QuestionAnswered));

  @override
  QuestionAnswered get _value => super._value as QuestionAnswered;

  @override
  $Res call({
    Object answer = freezed,
  }) {
    return _then(QuestionAnswered(
      answer: answer == freezed ? _value.answer : answer as bool,
    ));
  }
}

/// @nodoc
class _$QuestionAnswered implements QuestionAnswered {
  const _$QuestionAnswered({@required this.answer}) : assert(answer != null);

  @override
  final bool answer;

  @override
  String toString() {
    return 'QuestionsEvent.answered(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionAnswered &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

  @override
  $QuestionAnsweredCopyWith<QuestionAnswered> get copyWith =>
      _$QuestionAnsweredCopyWithImpl<QuestionAnswered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result answered(bool answer),
    @required Result restarted(),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return answered(answer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result answered(bool answer),
    Result restarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answered != null) {
      return answered(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(QuestionsStarted value),
    @required Result answered(QuestionAnswered value),
    @required Result restarted(QuestionsRestarted value),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return answered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(QuestionsStarted value),
    Result answered(QuestionAnswered value),
    Result restarted(QuestionsRestarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answered != null) {
      return answered(this);
    }
    return orElse();
  }
}

abstract class QuestionAnswered implements QuestionsEvent {
  const factory QuestionAnswered({@required bool answer}) = _$QuestionAnswered;

  bool get answer;
  $QuestionAnsweredCopyWith<QuestionAnswered> get copyWith;
}

/// @nodoc
abstract class $QuestionsRestartedCopyWith<$Res> {
  factory $QuestionsRestartedCopyWith(
          QuestionsRestarted value, $Res Function(QuestionsRestarted) then) =
      _$QuestionsRestartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsRestartedCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements $QuestionsRestartedCopyWith<$Res> {
  _$QuestionsRestartedCopyWithImpl(
      QuestionsRestarted _value, $Res Function(QuestionsRestarted) _then)
      : super(_value, (v) => _then(v as QuestionsRestarted));

  @override
  QuestionsRestarted get _value => super._value as QuestionsRestarted;
}

/// @nodoc
class _$QuestionsRestarted implements QuestionsRestarted {
  const _$QuestionsRestarted();

  @override
  String toString() {
    return 'QuestionsEvent.restarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuestionsRestarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result answered(bool answer),
    @required Result restarted(),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return restarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result answered(bool answer),
    Result restarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restarted != null) {
      return restarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(QuestionsStarted value),
    @required Result answered(QuestionAnswered value),
    @required Result restarted(QuestionsRestarted value),
  }) {
    assert(started != null);
    assert(answered != null);
    assert(restarted != null);
    return restarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(QuestionsStarted value),
    Result answered(QuestionAnswered value),
    Result restarted(QuestionsRestarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restarted != null) {
      return restarted(this);
    }
    return orElse();
  }
}

abstract class QuestionsRestarted implements QuestionsEvent {
  const factory QuestionsRestarted() = _$QuestionsRestarted;
}

/// @nodoc
class _$QuestionsStateTearOff {
  const _$QuestionsStateTearOff();

// ignore: unused_element
  _QuestionsState call(
      {@required List<Question> questions,
      @nullable Question currentQuestion,
      @required bool isLoading,
      @required bool isPlaying,
      @required int score}) {
    return _QuestionsState(
      questions: questions,
      currentQuestion: currentQuestion,
      isLoading: isLoading,
      isPlaying: isPlaying,
      score: score,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionsState = _$QuestionsStateTearOff();

/// @nodoc
mixin _$QuestionsState {
  List<Question> get questions;
  @nullable
  Question get currentQuestion;
  bool get isLoading;
  bool get isPlaying;
  int get score;

  $QuestionsStateCopyWith<QuestionsState> get copyWith;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
          QuestionsState value, $Res Function(QuestionsState) then) =
      _$QuestionsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Question> questions,
      @nullable Question currentQuestion,
      bool isLoading,
      bool isPlaying,
      int score});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  final QuestionsState _value;
  // ignore: unused_field
  final $Res Function(QuestionsState) _then;

  @override
  $Res call({
    Object questions = freezed,
    Object currentQuestion = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object score = freezed,
  }) {
    return _then(_value.copyWith(
      questions:
          questions == freezed ? _value.questions : questions as List<Question>,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion as Question,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      score: score == freezed ? _value.score : score as int,
    ));
  }
}

/// @nodoc
abstract class _$QuestionsStateCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$QuestionsStateCopyWith(
          _QuestionsState value, $Res Function(_QuestionsState) then) =
      __$QuestionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Question> questions,
      @nullable Question currentQuestion,
      bool isLoading,
      bool isPlaying,
      int score});
}

/// @nodoc
class __$QuestionsStateCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res>
    implements _$QuestionsStateCopyWith<$Res> {
  __$QuestionsStateCopyWithImpl(
      _QuestionsState _value, $Res Function(_QuestionsState) _then)
      : super(_value, (v) => _then(v as _QuestionsState));

  @override
  _QuestionsState get _value => super._value as _QuestionsState;

  @override
  $Res call({
    Object questions = freezed,
    Object currentQuestion = freezed,
    Object isLoading = freezed,
    Object isPlaying = freezed,
    Object score = freezed,
  }) {
    return _then(_QuestionsState(
      questions:
          questions == freezed ? _value.questions : questions as List<Question>,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion as Question,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      score: score == freezed ? _value.score : score as int,
    ));
  }
}

/// @nodoc
class _$_QuestionsState implements _QuestionsState {
  const _$_QuestionsState(
      {@required this.questions,
      @nullable this.currentQuestion,
      @required this.isLoading,
      @required this.isPlaying,
      @required this.score})
      : assert(questions != null),
        assert(isLoading != null),
        assert(isPlaying != null),
        assert(score != null);

  @override
  final List<Question> questions;
  @override
  @nullable
  final Question currentQuestion;
  @override
  final bool isLoading;
  @override
  final bool isPlaying;
  @override
  final int score;

  @override
  String toString() {
    return 'QuestionsState(questions: $questions, currentQuestion: $currentQuestion, isLoading: $isLoading, isPlaying: $isPlaying, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionsState &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.currentQuestion, currentQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.currentQuestion, currentQuestion)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(currentQuestion) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(score);

  @override
  _$QuestionsStateCopyWith<_QuestionsState> get copyWith =>
      __$QuestionsStateCopyWithImpl<_QuestionsState>(this, _$identity);
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState(
      {@required List<Question> questions,
      @nullable Question currentQuestion,
      @required bool isLoading,
      @required bool isPlaying,
      @required int score}) = _$_QuestionsState;

  @override
  List<Question> get questions;
  @override
  @nullable
  Question get currentQuestion;
  @override
  bool get isLoading;
  @override
  bool get isPlaying;
  @override
  int get score;
  @override
  _$QuestionsStateCopyWith<_QuestionsState> get copyWith;
}
