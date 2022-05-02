import '../../../domain/schedule/models/appointment_status.dart';
import '../../common.dart';

// TODO update translation
extension AppointmentStatusX on AppointmentStatus {

  String toText(BuildContext context) {
    switch (this) {
      case AppointmentStatus.upcoming:
        return 'Upcoming';
      case AppointmentStatus.ongoing:
        return 'Ongoing';
      case AppointmentStatus.ended:
        return 'Ended';
    }
  }
}
