part of 'favourite_tutors_cubit.dart';

@freezed
class FavouriteTutorsState with _$FavouriteTutorsState {
  const factory FavouriteTutorsState({
    @Default(false) bool isLoading,
    @Default(Right([])) Either<Failure, List<Tutor>> tutorsOrFailure,
    required Set<String> loadingTutors,
  }) = _FavouriteTutorsState;

  factory FavouriteTutorsState.initial() =>
      // ignore: prefer_const_constructors
      FavouriteTutorsState(loadingTutors: <String>{});
}
