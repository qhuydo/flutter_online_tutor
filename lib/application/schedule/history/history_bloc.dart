import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final ScheduleRepository _repository;

  HistoryBloc(this._repository) : super(const HistoryState()) {
    on<HistoryEvent>((event, emit) async {
      await event.when(initialise: () => _initialise(emit));
    });
  }

  Future _initialise(Emitter<HistoryState> emit) async {
    emit(state.copyWith(isLoading: true));

    // await Future.delayed(const Duration(seconds: 2));
    final result = await _repository.getHistory();

    emit(state.copyWith(
      isLoading: false,
      classOrFailure: result,
    ));
  }
}