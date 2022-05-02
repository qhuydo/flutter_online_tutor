import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/value_objects/non_empty_value.dart';
import '../../../domain/tutor/interfaces/i_tutor_repository.dart';

part 'report_tutor_cubit.freezed.dart';

part 'report_tutor_state.dart';

class ReportTutorCubit extends Cubit<ReportTutorState> {
  final TutorRepository _repository;

  ReportTutorCubit(
    this._repository,
    String tutorId,
  ) : super(ReportTutorState.initial(tutorId));

  void contentChanged(String value) {
    emit(state.copyWith(
      content: NonEmptyValue(value),
    ));
  }

  void submitted() async {
    Either<Failure, Unit>? result;

    if (state.content.isValid()) {
      emit(state.copyWith(
        isLoading: true,
        reportFailedOrSucceed: null,
      ));

      result = await _repository.report(
        state.tutorId,
        state.content.valueOrNull() ?? '',
      );
    }

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      reportFailedOrSucceed: result,
    ));
  }
}
