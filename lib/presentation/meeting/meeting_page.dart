import 'package:url_launcher/url_launcher.dart';

import '../../application/common/platform/platform_delegate.dart';
import '../../domain/schedule/models/appointment.dart';
import '../../infrastructure/common/network/server_url.dart';
import '../common.dart';
import '../common/utils/default_app_bar.dart';
import 'jitsi_meeting_page.dart';
import 'mock_meeting_page.dart';

class MeetingPage extends StatelessWidget {
  final Appointment? appointment;

  const MeetingPage({
    Key? key,
    this.appointment,
  }) : super(key: key);

  void launchUrl() async {
    if (appointment == null) return;

    final target = Target();
    if (target.isDesktop) {
      final host = getIt<ServerUrl>().webUrl;
      final url = '$host${appointment?.meetingLink}';
      if (await canLaunch(url)) {
        await launch(url);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final target = Target();
    if (target.isDesktop) {
      return Scaffold(
        appBar: buildAppBar(context, title: 'Meeting'),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: launchUrl,
            icon: const Icon(Icons.open_in_new),
            label: Text(context.l10n.openMeetingButtonText),
          ),
        ),
      );
    }
    if (!target.isSupportedJitsiPlatforms) return const MockMeetingPage();

    return JitsiMeetingPage(appointment: appointment);
  }
}
