import '../../../presentation/common.dart';

class ScheduleUtils {
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
}
