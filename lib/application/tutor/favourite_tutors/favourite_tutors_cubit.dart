import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/tutor/events/tutor_repository_event.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';

part 'favourite_tutors_cubit.freezed.dart';

part 'favourite_tutors_state.dart';

@injectable
class FavouriteTutorsCubit extends Cubit<FavouriteTutorsState> {
  final TutorRepository _repository;
  StreamSubscription<TutorRepositoryEvent>? _eventStream;

  FavouriteTutorsCubit(this._repository)
      : super(FavouriteTutorsState.initial()) {
    init();
  }

  Future init() async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getFavouriteTutors();
    emit(state.copyWith(tutorsOrFailure: result, isLoading: false));

    if (_eventStream != null) {
      _eventStream?.cancel();
    } else {
      _eventStream = _repository.subscribe().listen((event) {
        final tutor = event.tutor;
        final tutors = state.tutorsOrFailure.fold((l) => null, (r) => r);
        if (tutors == null) return;

        final idx = tutors.indexWhere((element) => element.id == tutor.id);
        if (idx == -1) return;

        final list = (tutors.toList()..[idx] = tutor)
            .where((element) => element.isFavourite)
            .toList();

        emit(state.copyWith(
          tutorsOrFailure: right(list),
          loadingTutors: state.loadingTutors..remove(tutor.id),
        ));
      });
    }
  }

  @override
  Future<void> close() async {
    await super.close();
    _eventStream?.cancel();
  }

  void toggleFavourite(String tutorId) async {
    log('toggleFavourite($tutorId)');
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
