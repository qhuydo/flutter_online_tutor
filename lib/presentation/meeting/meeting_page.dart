import '../../application/common/platform/platform_delegate.dart';
import '../../domain/schedule/models/appointment.dart';
import '../common.dart';
import 'jitsi_meeting_page.dart';
import 'mock_meeting_page.dart';

class MeetingPage extends StatelessWidget {
  final Appointment? appointment;

  const MeetingPage({
    Key? key,
    this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final target = Target();
    if (!target.isSupportedJitsiPlatforms) return const MockMeetingPage();

    return JitsiMeetingPage(appointment: appointment);
  }
}
