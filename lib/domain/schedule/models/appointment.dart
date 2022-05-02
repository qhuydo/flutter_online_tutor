import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/common.dart';
import '../../common/models/country.dart';
import 'appointment_status.dart';
import 'meeting_room.dart';

part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment {
  const Appointment._();

  const factory Appointment({
    required String id,
    required String scheduleId,
    required String bookId,
    required String tutorId,
    required DateTimeRange meetingTime,
    required String studentRequest,
    required String tutorName,
    required Country tutorCountry,
    required MeetingRoom meetingRoom,
    String? recordUrl,
    String? tutorAvatar,
  }) = _Appointment;

  bool get isCancelable => cancelDeadline.isAfter(DateTime.now());

  bool get isRoomClosed => roomClosingTime.isBefore(DateTime.now());

  DateTime get cancelDeadline =>
      meetingTime.start.subtract(const Duration(hours: 2));

  DateTime get roomClosingTime =>
      meetingTime.end.add(const Duration(minutes: 15));

  AppointmentStatus get status {
    final now = DateTime.now();
    if (meetingTime.start.isAfter(now)) {
      return AppointmentStatus.upcoming;
    }
    if (meetingTime.end.isBefore(now)) {
      return AppointmentStatus.ended;
    }
    return AppointmentStatus.ongoing;
  }
}
