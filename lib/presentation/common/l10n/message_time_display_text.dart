import 'package:intl/intl.dart';

import '../../../domain/schedule/utils/schedule_utils.dart';
import '../../common.dart';

extension MessageTimeDisplayText on DateTime {
  String toMessageTimeDisplayText(BuildContext context) {
    final time = toLocal();
    final DateFormat formatter;

    final isToday = isSameDate(DateTime.now());
    final isWithinOneWeek =
        DateTime.now().subtract(const Duration(days: 7)).isBefore(time);
    final languageCode = Localizations.localeOf(context).languageCode;

    if (isToday) {
      formatter = DateFormat.jm(languageCode);
    } else if (isWithinOneWeek) {
      formatter = DateFormat.E(languageCode);
    } else {
      formatter = DateFormat.yMd(languageCode);
    }

    return formatter.format(time);
  }

  String toMessageBubbleTimeDisplayText(BuildContext context) {
    final time = toLocal();

    final isToday = isSameDate(DateTime.now());
    final isWithinOneWeek =
        DateTime.now().subtract(const Duration(days: 7)).isBefore(time);
    final languageCode = Localizations.localeOf(context).languageCode;

    final hourFormatter = DateFormat.jm(languageCode);
    if (isToday) {
      return hourFormatter.format(time);
    } else if (isWithinOneWeek) {
      final formatter = DateFormat.EEEE(languageCode);
      return formatter.format(time) + ' ' + hourFormatter.format(time);
    } else {
      final formatter = DateFormat.yMd(languageCode);
      return formatter.format(time) + ' ' + hourFormatter.format(time);
    }
  }
}
