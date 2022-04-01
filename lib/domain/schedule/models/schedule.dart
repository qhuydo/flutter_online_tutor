import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/common.dart';

part 'schedule.freezed.dart';

typedef EventMap = Map<DateTime, List<Schedule>>;

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required String scheduleId,
    required String tutorId,
    required DateTimeRange meetingTime,
    required bool isBooked,
    required bool isReserved,
  }) = _Schedule;
}
