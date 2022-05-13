import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../../domain/course_ebook/models/course_category.dart';
import '../../../domain/course_ebook/models/sort_level_option.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../infrastructure/common/dto/pagination_list_dto.dart';

part 'course_list_bloc.freezed.dart';

part 'course_list_event.dart';

part 'course_list_state.dart';

@injectable
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  final CourseRepository _repository;

  CourseListBloc(this._repository) : super(const CourseListState()) {
    on<CourseListEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        keywordChanged: (value) => _keywordChanged(value, emit),
        pageChanged: (value) => _pageChanged(value, emit),
        pageLimitChanged: (value) => _pageLimitChanged(value, emit),
        sortOptionChanged: (value) => _sortOptionChanged(value, emit),
        levelsChanged: (value) => _levelsChanged(value, emit),
        categoriesChanged: (value) => _categoriesChanged(value, emit),
        searchOptionCleared: () => _searchOptionCleared(emit),
        submitted: () => _submitted(emit),
        recommendedListRefreshed: () => _recommendedListRefreshed(emit),
      );
    });
  }

  Future _initialise(Emitter<CourseListState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final result = await _repository.getCourses(
      page: 1,
      limit: 20,
    );

    final categories = (await _repository.getCourseCategories()).fold(
      (l) => <CourseCategory>[],
      (r) => r,
    );

    emit(state.copyWith(
      isLoading: false,
      listOrFailure: result,
      recommendedListOrFailure: result.map((r) => r.list),
      allCategories: categories,
    ));
  }

  Future _keywordChanged(String value, Emitter<CourseListState> emit) async {
    emit(state.copyWith(
      keyword: value,
    ));
  }

  Future _pageChanged(int value, Emitter<CourseListState> emit) async {
    emit(state.copyWith(currentPage: value));
    await _submitted(emit);
  }

  Future _pageLimitChanged(int value, Emitter<CourseListState> emit) async {
    emit(state.copyWith(limit: value));

    await _submitted(emit);
  }

  Future _sortOptionChanged(
    SortLevelOption? value,
    Emitter<CourseListState> emit,
  ) async =>
      emit(state.copyWith(sortBy: value));

  Future _levelsChanged(
    List<Level> value,
    Emitter<CourseListState> emit,
  ) async =>
      emit(state.copyWith(levels: value));

  Future _categoriesChanged(
    List<CourseCategory> value,
    Emitter<CourseListState> emit,
  ) async =>
      emit(state.copyWith(categories: value));

  Future _searchOptionCleared(Emitter<CourseListState> emit) async {
    emit(state.copyWith(
      keyword: '',
      currentPage: 1,
      limit: 20,
      levels: [],
      sortBy: null,
      categories: [],
    ));

    await _submitted(emit);
  }

  Future _submitted(Emitter<CourseListState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getCourses(
      page: state.currentPage,
      limit: state.limit,
      levels: state.levels.isEmpty ? null : state.levels,
      keyword: state.keyword.trim().isEmpty ? null : state.keyword.trim(),
      sortBy: state.sortBy,
      categories: state.categories.isEmpty ? null : state.categories,
    );

    emit(state.copyWith(
      isInitial: false,
      isLoading: false,
      listOrFailure: result,
    ));
  }

  Future _recommendedListRefreshed(Emitter<CourseListState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final result = await _repository.getCourses(
      page: 1,
      limit: 20,
    );

    final categories = (await _repository.getCourseCategories()).fold(
          (l) => <CourseCategory>[],
          (r) => r,
    );

    emit(state.copyWith(
      isLoading: false,
      recommendedListOrFailure: result.map((r) => r.list),
      allCategories: categories,
    ));
  }
}
