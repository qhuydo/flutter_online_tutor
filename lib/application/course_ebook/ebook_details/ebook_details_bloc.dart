import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/ebook.dart';

part 'ebook_details_bloc.freezed.dart';
part 'ebook_details_event.dart';
part 'ebook_details_state.dart';

@injectable
class EbookDetailsBloc extends Bloc<EbookDetailsEvent, EbookDetailsState> {
  final CourseRepository _repository;

  EbookDetailsBloc(this._repository) : super(EbookDetailsState.initial()) {
    on<EbookDetailsEvent>((event, emit) async {
      await event.when(
        initialise: (id) => _initialise(id, emit),
      );
    });
  }

  Future _initialise(String id, Emitter<EbookDetailsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    await Future.delayed(const Duration(seconds: 1));

    final result = await _repository.getEbookById(id);
    emit(state.copyWith(
      isLoading: false,
      ebookOrFailure: result,
    ));
  }
}
