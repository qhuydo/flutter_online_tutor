part of 'meeting_bloc.dart';

@freezed
class MeetingEvent with _$MeetingEvent {
  const factory MeetingEvent.initialise(Appointment? appointment) = _Initialise;

  const factory MeetingEvent.join() = _Join;
}
