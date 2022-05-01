part of 'upcoming_class_bloc.dart';

@freezed
class UpcomingClassEvent with _$UpcomingClassEvent {
  const factory UpcomingClassEvent.initialise() = _Initialise;

  const factory UpcomingClassEvent.reload() = _Reload;

  const factory UpcomingClassEvent.pageChanged(int page) = _PageChanged;

  const factory UpcomingClassEvent.pageLimitChanged(int pageLimit) =
      _PageLimitChanged;

  const factory UpcomingClassEvent.cancelClass(Appointment appointment) =
      _CancelClass;

  const factory UpcomingClassEvent.classCancellationMessageDisplayed() =
      _ClassCancellationMessageDisplayed;

  const factory UpcomingClassEvent.appointmentSelected(
    Appointment appointment,
  ) = _AppointmentSelected;
}
