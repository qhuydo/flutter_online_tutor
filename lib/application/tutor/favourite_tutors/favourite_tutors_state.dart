part of 'favourite_tutors_cubit.dart';

@freezed
class FavouriteTutorsState with _$FavouriteTutorsState {
  const factory FavouriteTutorsState({
    @Default(false) bool isLoading,
    @Default(Right([])) Either<Failure, List<Tutor>> tutorsOrFailure,
    @Default(<String>{}) Set<String> loadingTutors,
  }) = _FavouriteTutorsState;
}
