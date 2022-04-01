import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/tutor/events/tutor_repository_event.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';

part 'tutor_details_bloc.freezed.dart';

part 'tutor_details_event.dart';

part 'tutor_details_state.dart';

@injectable
class TutorDetailsBloc extends Bloc<TutorDetailsEvent, TutorDetailsState> {
  final TutorRepository _repository;

  TutorDetailsBloc(this._repository) : super(TutorDetailsState.initial()) {
    on<TutorDetailsEvent>((event, emit) async {
      await event.when(
        initialise: (value) => _initialise(value, emit),
        toggleFavourite: () => _toggleFavourite(emit),
      );
    });
  }

  Future _initialise(String value, Emitter<TutorDetailsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      /* isTutorScheduleLoading: true, */
    ));

    emit(state.copyWith(
      isLoading: false,
      tutorOrFailure: await _repository.getTutorById(value),
    ));

    await emit.forEach<TutorRepositoryEvent>(
      _repository.subscribe(),
      onData: (event) {
        final tutor = state.tutorOrFailure.fold((l) => null, (r) => r);
        if (tutor == null || tutor.id != event.tutor.id) return state;

        return state.copyWith(tutorOrFailure: right(event.tutor));
      },
    );
  }

  Future _toggleFavourite(Emitter<TutorDetailsState> emit) async {
    final tutor = state.tutorOrFailure.fold((l) => null, (r) => r);
    if (tutor != null) {
      await _repository.toggleFavourite(tutor.id);
    }
  }
}
