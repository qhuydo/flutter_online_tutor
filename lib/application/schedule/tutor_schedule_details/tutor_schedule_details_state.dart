part of 'tutor_schedule_details_cubit.dart';

@freezed
class TutorScheduleDetailsState with _$TutorScheduleDetailsState {

  const factory TutorScheduleDetailsState({
    @Default(false) isLoading,
    @Default(null) Either<Failure, Unit>? scheduleFailureOrSuccess,
    @Default('') note,
    required Schedule schedule,
  }) = _TutorScheduleDetailsState;

}

