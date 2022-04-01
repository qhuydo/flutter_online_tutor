part of 'tutor_schedule_bloc.dart';

@freezed
class TutorScheduleEvent with _$TutorScheduleEvent {
  const factory TutorScheduleEvent.initialise(String tutorId) = _Initialise;

  const factory TutorScheduleEvent.dateSelected({
    required DateTime selectedDay,
    required DateTime focusedDay,
  }) = _DateSelected;

  const factory TutorScheduleEvent.formatChanged({
    required CalendarFormat format,
  }) = _FormatChanged;
}
