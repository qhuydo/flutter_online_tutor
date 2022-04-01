part of 'tutor_schedule_bloc.dart';

@freezed
class TutorScheduleState with _$TutorScheduleState {
  const TutorScheduleState._();

  const factory TutorScheduleState({
    String? tutorId,
    @Default(false) bool isLoading,
    required CalendarFormat format,
    required DateTime focusedDay,
    DateTime? selectedDay,
    required DateTime firstDay,
    required DateTime lastDay,
    @Default(Right({})) Either<Failure, EventMap> scheduleOrFailure,
  }) = _TutorSchedulePage;

  factory TutorScheduleState.initial() => TutorScheduleState(
        format: CalendarFormat.month,
        focusedDay: DateTime.now(),
        firstDay: ScheduleUtils.getFirstDayOfThisMonth(),
        lastDay: ScheduleUtils.getLastDayOfNextThreeMonths(),
      );

  List<Schedule>? get currentSchedule => scheduleOrFailure.fold(
        (l) => null,
        (r) => r[focusedDay.keepDayInfo()],
      );
}
