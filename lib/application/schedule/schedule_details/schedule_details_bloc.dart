import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../upcoming_class/upcoming_class_bloc.dart';

part 'schedule_details_bloc.freezed.dart';

part 'schedule_details_event.dart';

part 'schedule_details_state.dart';

class ScheduleDetailsBloc
    extends Bloc<ScheduleDetailsEvent, ScheduleDetailsState> {
  final ScheduleRepository _repository;

  ScheduleDetailsBloc(
    this._repository,
    Appointment appointment,
  ) : super(ScheduleDetailsState(appointment: appointment)) {
    on<ScheduleDetailsEvent>((event, emit) async {
      await event.when(
        cancelClass: () => _onClassCanceled(emit),
        classCancellationMessageDisplayed: () =>
            _onClassCancellationMessageDisplayed(emit),
        studentRequestEdited: (value) => _onStudentRequestEdited(value, emit),
      );
    });
  }

  Future _onClassCanceled(Emitter<ScheduleDetailsState> emit) async {
    emit(state.copyWith(
      classCancellationStatus: const ClassCancellationStatus.loading(),
    ));

    final result = await _repository.cancelClass(
        scheduleDetailsId: state.appointment.bookId);

    final status = result.fold(
      (l) => ClassCancellationStatus.failed(l),
      (r) => const ClassCancellationStatus.succeed(),
    );

    emit(state.copyWith(classCancellationStatus: status));
  }

  Future _onClassCancellationMessageDisplayed(
    Emitter<ScheduleDetailsState> emit,
  ) async {}

  Future _onStudentRequestEdited(
    String value,
    Emitter<ScheduleDetailsState> emit,
  ) async {}
}
