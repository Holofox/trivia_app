// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'features/trivia/domain/repositories/i_trivia_repository.dart';
import 'features/trivia/domain/services/i_trivia_service.dart';
import 'features/trivia/presentation/blocs/questions/questions_bloc.dart';
import 'features/trivia/infrastructure/repositories/trivia_repository.dart';
import 'features/trivia/infrastructure/services/trivia_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<ITriviaService>(() => TriviaService());
  gh.lazySingleton<ITriviaRepository>(
      () => TriviaRepository(get<ITriviaService>()));
  gh.factory<QuestionsBloc>(() => QuestionsBloc(get<ITriviaRepository>()));
  return get;
}
