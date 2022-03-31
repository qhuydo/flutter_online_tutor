part of 'search_tutors_bloc.dart';

@freezed
class SearchTutorsState with _$SearchTutorsState {
  const SearchTutorsState._();

  const factory SearchTutorsState({
    @Default(false) bool isLoading,
    @Default(true) bool isInitial,
    @Default('') String keyword,
    @Default(1) int currentPage,
    @Default(20) int limit,
    Country? country,
    @Default([]) List<Speciality> specialities,
    @Default(TutorSortBy.defaultSort) TutorSortBy sortOption,
    @Default(Right([])) Either<Failure, List<Tutor>> result,
    @Default([]) List<Speciality> allSpecialities,
  }) = _SearchTutorsState;

  bool get isFilterApplied =>
      country != null ||
      specialities.isNotEmpty ||
      sortOption != TutorSortBy.defaultSort;
}
