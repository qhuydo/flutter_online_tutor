import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

import '../../application/meeting/meeting_bloc.dart';
import '../../di/dependency_injection.dart';
import '../../domain/schedule/models/appointment.dart';
import '../common/utils/default_app_bar.dart';
import 'mock_meeting_page.dart';

class JitsiMeetingPage extends StatelessWidget {
  final Appointment? appointment;

  const JitsiMeetingPage({Key? key, this.appointment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (appointment == null) return const MockMeetingPage();
    return BlocProvider<MeetingBloc>(
      create: (context) => getIt<MeetingBloc>()
        ..add(MeetingEvent.initialise(appointment))
        ..add(const MeetingEvent.join()),
      lazy: false,
      child: Scaffold(
        appBar: buildAppBar(context, title: 'Meeting'),
        body: kIsWeb
            ? JitsiMeetConferencing(
                extraJS: const [
                  // extraJs setup example
                  '<script>function echo(){console.log("echo!!!")};</script>',
                  '<script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>'
                ],
              )
            : Container(),
      ),
    );
  }
}
