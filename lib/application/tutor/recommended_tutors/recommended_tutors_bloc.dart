import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/tutor/events/tutor_repository_event.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';

part 'recommended_tutors_bloc.freezed.dart';

part 'recommended_tutors_event.dart';

part 'recommended_tutors_state.dart';

@injectable
class RecommendedTutorsBloc
    extends Bloc<RecommendedTutorsEvent, RecommendedTutorsState> {
  final TutorRepository _repository;

  RecommendedTutorsBloc(this._repository)
      : super(RecommendedTutorsState.initial()) {
    on<RecommendedTutorsEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialise(emit),
        toggleFavourite: (tutorId) => _onToggleFavourite(tutorId, emit),
      );
    });
  }

  Future _onInitialise(Emitter<RecommendedTutorsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    // TODO add default value for page & limit
    final result = await _repository.getRecommendedTutors(
      page: 1,
      limit: 100,
    );

    emit(state.copyWith(
      isLoading: false,
      tutorsOrFailure: result,
    ));

    await emit.forEach<TutorRepositoryEvent>(
      _repository.subscribe(),
      onData: (event) {
        final tutor = event.tutor;
        final tutors = state.tutorsOrFailure.fold((l) => null, (r) => r);
        if (tutors == null) return state;

        final idx = tutors.indexWhere((element) => element.id == tutor.id);
        if (idx == -1) return state;

        return state.copyWith(
          tutorsOrFailure: right(tutors.toList()..[idx] = tutor),
          loadingTutors: state.loadingTutors..remove(tutor.id),
        );
      },
    );
  }

  Future _onToggleFavourite(
    String tutorId,
    Emitter<RecommendedTutorsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      isLoading: false,
      loadingTutors: state.loadingTutors
        ..add(tutorId)
        ..toSet(),
    ));

    await _repository.toggleFavourite(tutorId);
  }
}
