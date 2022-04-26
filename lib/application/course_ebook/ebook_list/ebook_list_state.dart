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
    @Default(Right([])) Either<Failure, List<Ebook>> listOrFailure,
    @Default([]) List<CourseCategory> allCategories,
  }) = _EbookListState;

  List<Ebook>? get ebookList => listOrFailure.fold((l) => null, (r) => r);

  bool get isFilterApplied =>
      levels.isNotEmpty || sortBy != null || categories.isNotEmpty;

}
