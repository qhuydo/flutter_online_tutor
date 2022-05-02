import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:duration/duration.dart';
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
  Timer? _timer;

  UpcomingClassBloc(this._repository) : super(const UpcomingClassState()) {
    on<UpcomingClassEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        reload: () => _loadUpcomingClasses(emit),
        pageChanged: (value) => _pageChanged(value, emit),
        pageLimitChanged: (value) => _pageLimitChanged(value, emit),
        cancelClass: (value) => _classCanceled(value, emit),
        classCancellationMessageDisplayed: () =>
            _classCancellationMessageDisplayed(emit),
        appointmentSelected: (value) => _appointmentSelected(value, emit),
      );
    });
  }

  @override
  Future close() async {
    await super.close();
    _timer?.cancel();
  }

  Future _initialise(Emitter<UpcomingClassState> emit) async {
    await _loadUpcomingClasses(emit);

    await emit.forEach(_repository.subscribe(), onData: (event) {
      log('UpcomingClassBloc - reload event listened');
      add(const UpcomingClassEvent.reload());
      return state;
    });
  }

  Future _loadUpcomingClasses(Emitter<UpcomingClassState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getUpcomingClasses(
      page: state.currentPage,
      limit: 20,
    );

    final nextClass = await _repository.getNextClass();
    final totalLearningTime = await _repository.getTotalLearningTime();

    emit(state.copyWith(
      isLoading: false,
      classOrFailure: result,
      nextClass: nextClass.fold((l) => null, (r) => r),
      totalLearningTime:
          totalLearningTime.fold((l) => const Duration(), (r) => r),
    ));

    _timer?.cancel();
    final nextClassEndTime = state.nextClass?.meetingTime.end;

    if (nextClassEndTime != null &&
        nextClassEndTime.isAfter(DateTime.now())) {
      final duration = nextClassEndTime.difference(DateTime.now());
      log('schedule reload event, reload in ${prettyDuration(duration)}');
      _timer = Timer(
        duration,
        () => add(const UpcomingClassEvent.reload()),
      );
    }
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
    _repository.notifyChanged();
  }

  Future _appointmentSelected(
    value,
    Emitter<UpcomingClassState> emit,
  ) async =>
      emit(state.copyWith(
        selectedAppointment: value,
      ));
}
