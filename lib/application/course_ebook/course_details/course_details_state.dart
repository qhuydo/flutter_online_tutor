part of 'course_details_bloc.dart';

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const CourseDetailsState._();

  const factory CourseDetailsState({
    @Default(false) isLoading,
    required Either<Failure, Course> courseOrFailure,
  }) = _CourseDetailsState;

  factory CourseDetailsState.initial() => CourseDetailsState(
        courseOrFailure: Right(Course.empty()),
      );

  Course? get course => courseOrFailure.fold((l) => null, (r) => r);
}
