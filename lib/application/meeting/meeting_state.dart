part of 'meeting_bloc.dart';

@freezed
class MeetingState with _$MeetingState {
  const factory MeetingState({
    Appointment? appointment,
  }) = _MeetingState;
}
