part of 'course_syllabus_item_cubit.dart';

@freezed
class CourseSyllabusItemState with _$CourseSyllabusItemState {
  const factory CourseSyllabusItemState({
    required CourseTopic item,
    @Default(true) bool isLoading,
    Uint8List? pdf,
  }) = _CourseSyllabusItemState;
}