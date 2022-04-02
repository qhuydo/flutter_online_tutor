part of 'course_list_bloc.dart';

@freezed
class CourseListState with _$CourseListState {
  const CourseListState._();

  const factory CourseListState({
    @Default(false) isLoading,
    @Default(Right([])) Either<Failure, List<Course>> listOrFailure,
  }) = _CourseListState;


  List<Course>? get courseList => listOrFailure.fold((l) => null, (r) => r);
}
