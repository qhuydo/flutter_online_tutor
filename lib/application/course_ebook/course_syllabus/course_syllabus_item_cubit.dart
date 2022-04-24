import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course_topic.dart';

part 'course_syllabus_item_cubit.freezed.dart';
part 'course_syllabus_item_state.dart';

class CourseSyllabusItemCubit extends Cubit<CourseSyllabusItemState> {
  final CourseRepository _repository;

  CourseSyllabusItemCubit(this._repository, {required CourseTopic item})
      : super(CourseSyllabusItemState(item: item)) {
    init();
  }

  Future init() async {
    final result = await _repository.getSyllabusPreviewPdf(state.item);
    final pdf = result.fold((l) => null, (r) => r);
    emit(state.copyWith(
      isLoading: false,
      pdf: pdf,
    ));
  }
}
