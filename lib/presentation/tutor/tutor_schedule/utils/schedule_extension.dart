import 'package:intl/intl.dart';

import '../../../common.dart';

extension ScheduleX on DateTimeRange {
  String getMeetingTime(BuildContext context) {
    final formatter = DateFormat.jm(
      Localizations.localeOf(context).languageCode,
    );
    // TODO update translation
    return '${formatter.format(start)} -'
        ' ${formatter.format(end)}';
  }
}
