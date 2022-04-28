import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../infrastructure/common/dto/pagination_list_dto.dart';

part 'upcoming_class_bloc.freezed.dart';

part 'upcoming_class_event.dart';

part 'upcoming_class_state.dart';

@injectable
class UpcomingClassBloc extends Bloc<UpcomingClassEvent, UpcomingClassState> {
  final ScheduleRepository _repository;

  UpcomingClassBloc(this._repository) : super(const UpcomingClassState()) {
    on<UpcomingClassEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        pageChanged: (value) => _pageChanged(value, emit),
        pageLimitChanged: (value) => _pageLimitChanged(value, emit),
        cancelClass: (value) => _classCanceled(value, emit),
        classCancellationMessageDisplayed: () =>
            _classCancellationMessageDisplayed(emit),
        appointmentSelected: (value) => _appointmentSelected(value, emit),
      );
    });
  }

  Future _initialise(Emitter<UpcomingClassState> emit) async {
    await _loadUpcomingClasses(emit);
  }

  Future _loadUpcomingClasses(Emitter<UpcomingClassState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getUpcomingClasses(
      page: state.currentPage,
      limit: 20,
    );

    emit(state.copyWith(
      isLoading: false,
      classOrFailure: result,
    ));
  }

  Future _pageChanged(int value, Emitter<UpcomingClassState> emit) async {
    emit(state.copyWith(
      currentPage: value,
    ));

    await _loadUpcomingClasses(emit);
  }

  Future _pageLimitChanged(int value, Emitter<UpcomingClassState> emit) async {
    emit(state.copyWith(
      limit: value,
    ));

    await _loadUpcomingClasses(emit);
  }

  Future _classCanceled(
    Appointment value,
    Emitter<UpcomingClassState> emit,
  ) async {
    emit(state.copyWith(
      classCancellationStatus: const ClassCancellationStatus.loading(),
    ));

    final result = await _repository.cancelClass(
      scheduleDetailsId: value.bookId,
    );

    final status = result.fold(
      (l) => ClassCancellationStatus.failed(l),
      (r) => const ClassCancellationStatus.succeed(),
    );

    emit(state.copyWith(classCancellationStatus: status));
  }

  Future _classCancellationMessageDisplayed(
    Emitter<UpcomingClassState> emit,
  ) async {
    emit(state.copyWith(
      classCancellationStatus: const ClassCancellationStatus.initial(),
    ));
    await _loadUpcomingClasses(emit);
  }

  Future _appointmentSelected(
    value,
    Emitter<UpcomingClassState> emit,
  ) async =>
      emit(state.copyWith(
        selectedAppointment: value,
      ));
}
