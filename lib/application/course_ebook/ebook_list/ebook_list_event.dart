part of 'ebook_list_bloc.dart';

@freezed
class EbookListEvent with _$EbookListEvent {
  const factory EbookListEvent.initialise() = _Initialise;

  const factory EbookListEvent.keywordChanged(String keyword) = _KeywordChanged;

  const factory EbookListEvent.pageChanged(int page) = _PageChanged;

  const factory EbookListEvent.pageLimitChanged(int pageLimit) =
      _PageLimitChanged;

  const factory EbookListEvent.sortOptionChanged(SortLevelOption? sortOption) =
      _SortOptionChanged;

  const factory EbookListEvent.levelsChanged(List<Level> levels) =
      _LevelsChanged;

  const factory EbookListEvent.categoriesChanged(
      List<CourseCategory> categories) = _CategoriesChanged;

  const factory EbookListEvent.searchOptionCleared() = _SearchOptionCleared;

  const factory EbookListEvent.submitted() = _Submitted;
}
