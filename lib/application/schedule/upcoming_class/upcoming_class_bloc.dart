import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';

part 'upcoming_class_bloc.freezed.dart';

part 'upcoming_class_event.dart';

part 'upcoming_class_state.dart';

@injectable
class UpcomingClassBloc extends Bloc<UpcomingClassEvent, UpcomingClassState> {
  final ScheduleRepository _repository;

  UpcomingClassBloc(this._repository) : super(const UpcomingClassState()) {
    on<UpcomingClassEvent>((event, emit) async {
      await event.when(initialise: () => _initialise(emit));
    });
  }

  Future _initialise(Emitter<UpcomingClassState> emit) async {
    emit(state.copyWith(isLoading: true));

    // await Future.delayed(const Duration(seconds: 2));
    final result = await _repository.getUpcomingClasses();

    emit(state.copyWith(
      isLoading: false,
      classOrFailure: result,
    ));
  }
}
