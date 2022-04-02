part of 'course_details_bloc.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {

  const factory CourseDetailsEvent.initialise(String courseId) = _Initialise;

}

