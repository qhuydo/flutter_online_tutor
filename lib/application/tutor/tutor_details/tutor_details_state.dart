part of 'tutor_details_bloc.dart';

@freezed
class TutorDetailsState with _$TutorDetailsState {
  const factory TutorDetailsState({
    @Default(false) isLoading,
    @Default(false) isTutorScheduleLoading,
    required Either<Failure, Tutor> tutorOrFailure,
  }) = _TutorDetailsState;

  factory TutorDetailsState.initial() => TutorDetailsState(
        tutorOrFailure: right(Tutor.empty()),
      );
}
