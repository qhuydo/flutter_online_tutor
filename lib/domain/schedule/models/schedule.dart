import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/common.dart';

part 'schedule.freezed.dart';

typedef EventMap = Map<DateTime, List<Schedule>>;

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  const factory Schedule({
    required String scheduleId,
    required String tutorId,
    required DateTimeRange meetingTime,
    required bool isBooked,
    required bool isReserved,
  }) = _Schedule;

  bool get isPastSchedule => meetingTime.start.isBefore(DateTime.now());
}
