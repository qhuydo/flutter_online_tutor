import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor_info/tutor_info_dto.dart';

part 'schedule_info_dto.freezed.dart';

part 'schedule_info_dto.g.dart';

@freezed
class ScheduleInfoDto with _$ScheduleInfoDto {
  const factory ScheduleInfoDto({
    required DateTime date,
    required int startTimestamp,
    required int endTimestamp,
    required String id,
    required String tutorId,
    required String startTime,
    required String endTime,
    required DateTime createdAt,
    required DateTime updatedAt,
    required TutorInfoDto tutorInfo,
  }) = _ScheduleInfo;

  factory ScheduleInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleInfoDtoFromJson(json);
}
