import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/ebook.dart';

part 'ebook_list_bloc.freezed.dart';
part 'ebook_list_event.dart';
part 'ebook_list_state.dart';


@injectable
class EbookListBloc extends Bloc<EbookListEvent, EbookListState> {
  final CourseRepository _repository;

  EbookListBloc(this._repository) : super(const EbookListState()) {
    on<EbookListEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
      );
    });
  }

  Future _initialise(Emitter<EbookListState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    // await Future.delayed(const Duration(seconds: 2));

    final result = await _repository.getRecommendedEbooks(
      page: 1,
      limit: 20,
    );
    emit(state.copyWith(
      isLoading: false,
      listOrFailure: result,
    ));
  }
}
