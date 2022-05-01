import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_repository_event.freezed.dart';

@freezed
class ScheduleRepositoryEvent with _$ScheduleRepositoryEvent {
  const ScheduleRepositoryEvent._();

  const factory ScheduleRepositoryEvent.dataChanged() = _DataChanged;
}
