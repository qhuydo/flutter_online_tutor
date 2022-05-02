import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../infrastructure/common/dto/pagination_list_dto.dart';

part 'history_bloc.freezed.dart';

part 'history_event.dart';

part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final ScheduleRepository _repository;

  HistoryBloc(this._repository) : super(const HistoryState()) {
    on<HistoryEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        reload: () => _loadStudiedClasses(emit),
        pageChanged: (value) => _pageChanged(value, emit),
        pageLimitChanged: (value) => _pageLimitChanged(value, emit),
      );
    });
  }

  Future _initialise(Emitter<HistoryState> emit) async {
    await _loadStudiedClasses(emit);

    await emit.forEach(_repository.subscribe(), onData: (event) {
      log('HistoryBloc - reload event listened');
      add(const HistoryEvent.reload());
      return state;
    });
  }

  Future _loadStudiedClasses(Emitter<HistoryState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getHistory(
      page: state.currentPage,
      limit: 20,
    );

    emit(state.copyWith(
      isLoading: false,
      classOrFailure: result,
    ));
  }

  Future _pageChanged(int value, Emitter<HistoryState> emit) async {
    emit(state.copyWith(
      currentPage: value,
    ));

    await _loadStudiedClasses(emit);
  }

  Future _pageLimitChanged(int value, Emitter<HistoryState> emit) async {
    emit(state.copyWith(
      limit: value,
    ));

    await _loadStudiedClasses(emit);
  }
}
