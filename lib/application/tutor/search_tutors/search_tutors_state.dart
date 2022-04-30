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
    @Default([]) List<Speciality> allSpecialities,
    @Default(Right(PaginationListDto<Tutor>(list: [], totalItems: 0, limit: 1)))
        Either<Failure, PaginationListDto<Tutor>> result,
  }) = _SearchTutorsState;

  bool get isFilterApplied =>
      country != null ||
      specialities.isNotEmpty ||
      sortOption != TutorSortBy.defaultSort;

  List<Tutor>? get resultList => result.fold((l) => null, (r) => r.list);

  PaginationListDto<Tutor>? get paginationList => result.fold(
        (l) => null,
        (r) => r,
      );
}
