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
