import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/constants/levels.dart';
import 'course_topic.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const Course._();

  const factory Course({
    required String id,
    required String name,
    required Level level,
    required String reason,
    required String purpose,
    required List<CourseTopic> courseTopic,
  }) = _Course;

  int get courseLength => courseTopic.length;
}
