part of 'report_tutor_cubit.dart';

@freezed
class ReportTutorState with _$ReportTutorState {
  const factory ReportTutorState({
    required String tutorId,
    required NonEmptyValue content,
    Either<Failure, Unit>? reportFailedOrSucceed,
    @Default(false) isLoading,
    @Default(false) bool showError,
  }) = _ReportTutorState;

  factory ReportTutorState.initial(String tutorId) => ReportTutorState(
        tutorId: tutorId,
        content: NonEmptyValue(''),
      );
}
