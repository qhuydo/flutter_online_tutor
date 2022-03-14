import '../common.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/meeting_button_row.dart';

class MeetingPage extends StatelessWidget {
  final String meetingId;

  const MeetingPage({
    Key? key,
    this.meetingId = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.sawarabiGothicTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      child: const MeetingBody(),
    );
  }
}

class MeetingBody extends StatelessWidget {
  const MeetingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text(
          context.l10n.meetingRoomTitle,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        elevation: 0.75,
        shadowColor: Colors.grey[500]?.withOpacity(0.5),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: 80,
              ),
              child: const MeetingButtonRow(),
            ),
          )
        ],
      ),
    );
  }
}
