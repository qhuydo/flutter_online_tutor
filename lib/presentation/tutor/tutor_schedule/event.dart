import 'dart:collection';
import 'dart:math';

import 'package:table_calendar/table_calendar.dart';

import 'utils.dart';

class ScheduleEvent {
  final String title;
  final ScheduleStatus status;

  const ScheduleEvent({
    required this.title,
    required this.status,
  });

  @override
  String toString() => title;
}

enum ScheduleStatus {
  empty,
  reserved,
  booked,
}

final kEvents = LinkedHashMap<DateTime, List<ScheduleEvent>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kTimeRanges = [
  '17:30 - 17:55',
  '18:00 - 18:25',
  '18:30 - 18:55',
  '19:00 - 19:25',
  '19:30 - 19:55',
  '20:00 - 20:25',
  '20:30 - 20:55',
  '21:30 - 21:55',
  '22:30 - 22:55',
  '23:30 - 23:55',
];

final _random = Random();

const _nItems = 5;

final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(
      kFirstDay.year,
      kFirstDay.month,
      item * _nItems,
    ): List.generate(
      item % _nItems,
      (index) => ScheduleEvent(
        title: _kTimeRanges[index],
        status: ScheduleStatus
            .values[_random.nextInt(ScheduleStatus.values.length)],
      ),
    ),
}..addAll({
    kToday: [
      ScheduleEvent(
        title: _kTimeRanges[0],
        status: ScheduleStatus.empty,
      ),
      ScheduleEvent(
        title: _kTimeRanges[1],
        status: ScheduleStatus.empty,
      ),
      ScheduleEvent(
        title: _kTimeRanges[2],
        status: ScheduleStatus.empty,
      ),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
