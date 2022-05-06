import '../../../domain/schedule/models/appointment_status.dart';
import '../../common.dart';

extension AppointmentStatusX on AppointmentStatus {

  String toText(BuildContext context) {
    switch (this) {
      case AppointmentStatus.upcoming:
        return context.l10n.appointmentUpcomingLabel;
      case AppointmentStatus.ongoing:
        return context.l10n.appointmentOngoingLabel;
      case AppointmentStatus.ended:
        return context.l10n.appointmentEndedLabel;
    }
  }
}
