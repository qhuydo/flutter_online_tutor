import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/tutor/events/tutor_repository_event.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../domain/tutor/models/tutor.dart';
import '../../../domain/tutor/models/tutor_search_options.dart';
import '../../../domain/user/models/speciality.dart';

part 'search_tutors_bloc.freezed.dart';

part 'search_tutors_event.dart';

part 'search_tutors_state.dart';

@Injectable()
class SearchTutorsBloc extends Bloc<SearchTutorsEvent, SearchTutorsState> {
  final TutorRepository _repository;

  SearchTutorsBloc(this._repository) : super(const SearchTutorsState()) {
    on<SearchTutorsEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        keywordChanged: (value) => _keywordChanged(value, emit),
        pageChanged: (value) => _pageChanged(value, emit),
        pageLimitChanged: (value) => _pageLimitChanged(value, emit),
        countryChanged: (value) => _countryChanged(value, emit),
        specialitiesChanged: (value) => _specialitiesChanged(value, emit),
        sortOptionChanged: (value) => _sortOptionChanged(value, emit),
        searchOptionCleared: () => _searchOptionCleared(emit),
        submitted: () => _submitted(emit),
        toggleFavourite: (tutorId) => _toggleFavourite(tutorId, emit),
      );
    });
  }

  Future _initialise(Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final result = await _repository.getRecommendedTutors(
      page: state.currentPage,
      limit: state.limit,
    );

    final allSpecialities = await _repository.getSpecialities();

    emit(state.copyWith(
      isLoading: false,
      result: result,
      allSpecialities: allSpecialities,
    ));

    await emit.forEach<TutorRepositoryEvent>(
      _repository.subscribe(),
      onData: (event) {
        final tutor = event.tutor;
        final tutors = state.result.fold((l) => null, (r) => r);
        if (tutors == null) return state;

        final idx = tutors.indexWhere((element) => element.id == tutor.id);
        if (idx == -1) return state;

        return state.copyWith(
          result: right(tutors.toList()..[idx] = tutor),
        );
      },
    );
  }

  Future _keywordChanged(String value, Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(
      keyword: value,
    ));
  }

  Future _pageChanged(int value, Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(
      currentPage: value,
    ));
  }

  Future _pageLimitChanged(int value, Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(
      limit: value,
    ));
  }

  Future _countryChanged(
    Country? value,
    Emitter<SearchTutorsState> emit,
  ) async {
    emit(state.copyWith(
      country: value,
    ));
  }

  Future _specialitiesChanged(
    List<Speciality> value,
    Emitter<SearchTutorsState> emit,
  ) async {
    emit(state.copyWith(
      specialities: value,
    ));
  }

  Future _sortOptionChanged(
    TutorSortBy value,
    Emitter<SearchTutorsState> emit,
  ) async {
    emit(state.copyWith(
      sortOption: value,
    ));
  }

  Future _searchOptionCleared(Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(
      specialities: [],
      country: null,
      sortOption: TutorSortBy.defaultSort,
    ));

    await _submitted(emit);
  }

  Future _submitted(Emitter<SearchTutorsState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.searchTutor(
      specialities: state.specialities,
      keyword: state.keyword,
      country: state.country,
      sortBy: state.sortOption,
      page: state.currentPage,
      limit: state.limit,
    );

    emit(state.copyWith(
      isInitial: false,
      isLoading: false,
      result: result,
    ));
  }

  Future _toggleFavourite(
    String tutorId,
    Emitter<SearchTutorsState> emit,
  ) => _repository.toggleFavourite(tutorId);
}
