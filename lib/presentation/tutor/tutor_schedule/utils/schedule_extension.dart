import 'package:intl/intl.dart';

import '../../../common.dart';

extension ScheduleX on DateTimeRange {
  String getMeetingTime(BuildContext context) {
    final formatter = DateFormat.jm(
      Localizations.localeOf(context).languageCode,
    );
    return context.l10n.meetingTime(
      formatter.format(start),
      formatter.format(end),
    );
  }
}
