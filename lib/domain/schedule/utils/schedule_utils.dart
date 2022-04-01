import 'package:intl/intl.dart';

import '../../../presentation/common.dart';

class ScheduleUtils {
  static DateTime getFirstDayOfThisMonth() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, 1);
  }

  static DateTime getLastDayOfNextThreeMonths() {
    final now = DateTime.now();
    return DateTime(now.year, now.month + 3 + 1, 0);
  }

  static DateTimeRange dateTimeRangeInOneMonth(DateTime selectedDate) {
    final month = selectedDate.month;
    final year = selectedDate.year;

    return DateTimeRange(
      start: DateTime(
        year,
        month,
        1,
      ),
      end: DateTime(
        year,
        month + 1,
        1,
      ),
    );
  }

  static DateTimeRange dateTimeRangeInThreeMonths(DateTime selectedDate) {
    final month = selectedDate.month;
    final year = selectedDate.year;

    return DateTimeRange(
      start: DateTime(
        year,
        month,
        1,
      ),
      end: DateTime(
        year,
        month + 3 + 1,
        1,
      ),
    );
  }
}

extension DateTimeX on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  DateTime keepDayInfo() {
    return DateTime(year, month, day);
  }

  String getFormattedDueDateWithTime() {
    return '${DateFormat.yMMMd().format(this)}'
        ' ${DateFormat.jm().format(this)}';
  }

  String getFormattedDueDate() => DateFormat.yMMMd().format(this);
}
