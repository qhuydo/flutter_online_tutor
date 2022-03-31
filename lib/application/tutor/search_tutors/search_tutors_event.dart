part of 'search_tutors_bloc.dart';

@freezed
class SearchTutorsEvent with _$SearchTutorsEvent {
  const factory SearchTutorsEvent.initialise() = _Initialise;

  const factory SearchTutorsEvent.keywordChanged(String keyword) =
      _KeywordChanged;

  const factory SearchTutorsEvent.pageChanged(int page) = _PageChanged;

  const factory SearchTutorsEvent.pageLimitChanged(int page) =
      _PageLimitChanged;

  const factory SearchTutorsEvent.countryChanged(Country? country) =
      _CountryChanged;

  const factory SearchTutorsEvent.specialitiesChanged(
      List<Speciality> specialities) = _SpecialitiesChanged;

  const factory SearchTutorsEvent.sortOptionChanged(TutorSortBy sortOption) =
      _SortOptionChanged;

  const factory SearchTutorsEvent.searchOptionCleared() = _SearchOptionCleared;

  const factory SearchTutorsEvent.submitted() = _Submitted;

  const factory SearchTutorsEvent.toggleFavourite(
    String tutorId,
  ) = _ToggleFavourite;
}
