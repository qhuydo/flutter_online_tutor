import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';

part 'favourite_tutors_cubit.freezed.dart';

part 'favourite_tutors_state.dart';

@injectable
class FavouriteTutorsCubit extends Cubit<FavouriteTutorsState> {
  final TutorRepository _repository;

  FavouriteTutorsCubit(this._repository) : super(const FavouriteTutorsState()) {
    init();
  }

  Future init() async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getFavouriteTutors();
    emit(state.copyWith(tutorsOrFailure: result, isLoading: false));

    _repository.subscribe().listen((event) {
      final tutor = event.tutor;
      final tutors = state.tutorsOrFailure.fold((l) => null, (r) => r);
      if (tutors == null) return;

      final idx = tutors.indexWhere((element) => element.id == tutor.id);
      if (idx == -1) return;

      state.copyWith(
        tutorsOrFailure: right(tutors.toList()
          ..[idx] = tutor
          ..where((element) => element.isFavourite)),
        loadingTutors: state.loadingTutors..remove(tutor.id),
      );
    });
  }

  void toggleFavourite(String tutorId) async {
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
