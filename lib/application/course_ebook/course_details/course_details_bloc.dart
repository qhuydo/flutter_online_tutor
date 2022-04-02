import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';

part 'course_details_bloc.freezed.dart';

part 'course_details_event.dart';

part 'course_details_state.dart';

@injectable
class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final CourseRepository _repository;

  CourseDetailsBloc(this._repository) : super(CourseDetailsState.initial()) {
    on<CourseDetailsEvent>((event, emit) async {
      await event.when(
        initialise: (id) => _initialise(id, emit),
      );
    });
  }

  Future _initialise(String id, Emitter<CourseDetailsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    await Future.delayed(const Duration(seconds: 2));

    final result = await _repository.getCourseById(id);
    emit(state.copyWith(
      isLoading: false,
      courseOrFailure: result,
    ));
  }
}
