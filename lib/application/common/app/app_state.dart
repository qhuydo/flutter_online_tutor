part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required Language language,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        language: Language.followSystem,
      );
}
