part of 'schedule_details_cubit.dart';

@freezed
class ScheduleDetailsState with _$ScheduleDetailsState {

  const factory ScheduleDetailsState({
    @Default(false) isLoading,
    @Default(null) Either<Failure, Unit>? scheduleFailureOrSuccess,
    @Default('') note,
    required Schedule schedule,
  }) = _ScheduleDetailsState;

}

