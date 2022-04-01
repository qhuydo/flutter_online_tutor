import 'package:freezed_annotation/freezed_annotation.dart';

import 'schedule_details/schedule_details_dto.dart';

part 'tutor_schedule_dto.freezed.dart';

part 'tutor_schedule_dto.g.dart';

@freezed
class TutorScheduleDto with _$TutorScheduleDto {
  const factory TutorScheduleDto({
    required String id,
    required String tutorId,
    required String startTime,
    required String endTime,
    required int startTimestamp,
    required int endTimestamp,
    required DateTime createdAt,
    required bool isBooked,
    required List<ScheduleDetailDto> scheduleDetails,
  }) = _TutorScheduleDto;

  factory TutorScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$TutorScheduleDtoFromJson(json);
}
