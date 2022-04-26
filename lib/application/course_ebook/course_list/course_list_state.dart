part of 'course_list_bloc.dart';

@freezed
class CourseListState with _$CourseListState {
  const CourseListState._();

  const factory CourseListState({
    @Default(false) isLoading,
    @Default(true) bool isInitial,
    @Default('') String keyword,
    @Default(1) int currentPage,
    @Default(20) int limit,
    @Default([]) List<Level> levels,
    SortLevelOption? sortBy,
    @Default([]) List<CourseCategory> categories,
    @Default(Right([])) Either<Failure, List<Course>> listOrFailure,
    @Default(Right([])) Either<Failure, List<Course>> recommendedListOrFailure,
    @Default([]) List<CourseCategory> allCategories,
  }) = _CourseListState;

  List<Course>? get courseList => listOrFailure.fold((l) => null, (r) => r);

  List<Course>? get recommendedCourseList =>
      listOrFailure.fold((l) => null, (r) => r);

  bool get isFilterApplied =>
      levels.isNotEmpty || sortBy != null || categories.isNotEmpty;
}
