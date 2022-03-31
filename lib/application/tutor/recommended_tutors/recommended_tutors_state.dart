part of 'recommended_tutors_bloc.dart';

@freezed
class RecommendedTutorsState with _$RecommendedTutorsState {
  factory RecommendedTutorsState({
    @Default(false) bool isLoading,
    @Default(Right([])) Either<Failure, List<Tutor>> tutorsOrFailure,
    required Set<String> loadingTutors,
  }) = _RecommendedTutorsState;

  factory RecommendedTutorsState.initial() =>
      RecommendedTutorsState(loadingTutors: <String>{});
}
