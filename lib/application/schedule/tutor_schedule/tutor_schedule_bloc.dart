import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/schedule.dart';
import '../../../domain/schedule/utils/schedule_utils.dart';

part 'tutor_schedule_bloc.freezed.dart';

part 'tutor_schedule_event.dart';

part 'tutor_schedule_state.dart';

@injectable
class TutorScheduleBloc extends Bloc<TutorScheduleEvent, TutorScheduleState> {
  final ScheduleRepository _repository;

  TutorScheduleBloc(this._repository) : super(TutorScheduleState.initial()) {
    on<TutorScheduleEvent>((event, emit) async {
      await event.when(
        initialise: (value) => _initialise(value, emit),
        dateSelected: (selectedDay, focusedDay) => _dateSelected(
          selectedDay,
          focusedDay,
          emit,
        ),
        formatChanged: (value) => _formatChanged(value, emit),
      );
    });
  }

  Future _initialise(String value, Emitter<TutorScheduleState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getScheduleEvents(
      tutorId: value,
      range: ScheduleUtils.dateTimeRangeInThreeMonths(DateTime.now()),
    );

    emit(state.copyWith(
      isLoading: false,
      scheduleOrFailure: result,
    ));
  }

  Future _dateSelected(
    DateTime selectedDay,
    DateTime focusedDay,
    Emitter<TutorScheduleState> emit,
  ) async {
    emit(state.copyWith(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
    ));
  }

  Future _formatChanged(
    CalendarFormat value,
    Emitter<TutorScheduleState> emit,
  ) async {
    emit(state.copyWith(format: value));
  }
}
