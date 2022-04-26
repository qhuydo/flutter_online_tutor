part of 'course_list_bloc.dart';

@freezed
class CourseListEvent with _$CourseListEvent {
  const factory CourseListEvent.initialise() = _Initialise;

  const factory CourseListEvent.keywordChanged(String keyword) =
      _KeywordChanged;

  const factory CourseListEvent.pageChanged(int page) = _PageChanged;

  const factory CourseListEvent.pageLimitChanged(int pageLimit) =
      _PageLimitChanged;

  const factory CourseListEvent.sortOptionChanged(SortLevelOption? sortOption) =
      _SortOptionChanged;

  const factory CourseListEvent.levelsChanged(List<Level> levels) =
      _LevelsChanged;

  const factory CourseListEvent.categoriesChanged(
      List<CourseCategory> categories) = _CategoriesChanged;

  const factory CourseListEvent.searchOptionCleared() = _SearchOptionCleared;

  const factory CourseListEvent.submitted() = _Submitted;
}
