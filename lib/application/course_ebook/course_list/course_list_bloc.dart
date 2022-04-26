import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';

part 'course_list_bloc.freezed.dart';

part 'course_list_event.dart';

part 'course_list_state.dart';

@injectable
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  final CourseRepository _repository;

  CourseListBloc(this._repository) : super(const CourseListState()) {
    on<CourseListEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
      );
    });
  }

  Future _initialise(Emitter<CourseListState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    // await Future.delayed(const Duration(seconds: 2));

    final result = await _repository.getCourses(
      page: 1,
      limit: 20,
    );
    emit(state.copyWith(
      isLoading: false,
      listOrFailure: result,
      recommendedListOrFailure: result,
    ));
  }
}
