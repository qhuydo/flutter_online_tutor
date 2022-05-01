import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/schedule.dart';

part 'tutor_schedule_details_cubit.freezed.dart';

part 'tutor_schedule_details_state.dart';

class TutorScheduleDetailsCubit extends Cubit<TutorScheduleDetailsState> {
  final ScheduleRepository _repository;

  TutorScheduleDetailsCubit(this._repository, {required Schedule schedule})
      : super(TutorScheduleDetailsState(schedule: schedule));

  void onNoteChanged(String value) {
    emit(state.copyWith(note: value));
  }

  Future onSubmitted() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.bookClass(
      scheduleDetailsId: state.schedule.scheduleId,
      note: state.note,
    );

    emit(state.copyWith(
      isLoading: false,
      scheduleFailureOrSuccess: result,
    ));

    _repository.notifyChanged();
  }
}
