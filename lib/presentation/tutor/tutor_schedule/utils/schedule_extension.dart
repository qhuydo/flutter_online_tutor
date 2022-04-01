import 'package:intl/intl.dart';

import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';

extension ScheduleX on Schedule {
  String getMeetingTime(BuildContext context) {
    final formatter = DateFormat.jm(
      Localizations.localeOf(context).languageCode,
    );
    // TODO update translation
    return '${formatter.format(meetingTime.start)} -'
        ' ${formatter.format(meetingTime.end)}';
  }
}
