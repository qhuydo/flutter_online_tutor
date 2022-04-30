part of 'ebook_list_bloc.dart';

@freezed
class EbookListState with _$EbookListState {
  const EbookListState._();

  const factory EbookListState({
    @Default(false) isLoading,
    @Default(true) bool isInitial,
    @Default('') String keyword,
    @Default(1) int currentPage,
    @Default(20) int limit,
    @Default([]) List<Level> levels,
    SortLevelOption? sortBy,
    @Default([]) List<CourseCategory> categories,
    @Default([]) List<CourseCategory> allCategories,
    @Default(Right(PaginationListDto<Ebook>(list: [], totalItems: 0, limit: 1)))
        Either<Failure, PaginationListDto<Ebook>> listOrFailure,
  }) = _EbookListState;

  List<Ebook>? get ebookList => listOrFailure.fold(
        (l) => null,
        (r) => r.list,
      );

  PaginationListDto? get paginationEbookList => listOrFailure.fold(
        (l) => null,
        (r) => r,
      );

  bool get isFilterApplied =>
      levels.isNotEmpty || sortBy != null || categories.isNotEmpty;
}
