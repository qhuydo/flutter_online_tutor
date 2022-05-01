part of 'schedule_details_bloc.dart';

@freezed
class ScheduleDetailsEvent with _$ScheduleDetailsEvent {
  const factory ScheduleDetailsEvent.cancelClass() = _CancelClass;

  const factory ScheduleDetailsEvent.classCancellationMessageDisplayed() =
      _ClassCancellationMessageDisplayed;

  const factory ScheduleDetailsEvent.studentRequestEdited(String newRequest) =
      _studentRequestEdited;
}
