import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/common.dart';
import '../../common/models/country.dart';
import 'meeting_room.dart';

part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment {
  const Appointment._();

  const factory Appointment({
    required String scheduleId,
    required String bookId,
    required String tutorId,
    required DateTimeRange meetingTime,
    required String studentRequest,
    required String tutorName,
    required Country tutorCountry,
    required MeetingRoom meetingRoom,
    String? tutorAvatar,
  }) = _Appointment;

  bool get isCancelable => meetingTime.start
      .subtract(const Duration(hours: 2))
      .isBefore(DateTime.now());
}
