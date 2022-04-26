import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_category.freezed.dart';

@freezed
class CourseCategory with _$CourseCategory {
  const CourseCategory._();

  const factory CourseCategory({
    required String id,
    required String title,
  }) = _CourseCategory;

  factory CourseCategory.empty() => const CourseCategory(
        id: '',
        title: '',
      );
}
