import 'dart:io';

import 'package:table_calendar/table_calendar.dart';

import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'event.dart';
import 'utils.dart';
import 'widgets/schedule_row.dart';

// TODO refactor this mess
class TutorSchedulePage extends StatefulWidget {
  final String tutorId;

  const TutorSchedulePage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  State<TutorSchedulePage> createState() => _TutorSchedulePageState();
}

class _TutorSchedulePageState extends State<TutorSchedulePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  late final ValueNotifier<List<ScheduleEvent>> _selectedEvents;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<ScheduleEvent> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.bookButtonText,
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarBuilders: CalendarBuilders(markerBuilder: (
              context,
              day,
              events,
            ) {
              return events.isEmpty
                  ? null
                  : Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.6),
                          width: 1.25,
                        ),
                      ),
                    );
            }),
            // default daysOfWeekHeight is 16
            daysOfWeekHeight: Platform.isLinux ? 16 + 12 : 16,
            locale: Localizations.localeOf(context).languageCode,
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            eventLoader: _getEventsForDay,
            onDaySelected: _onDaySelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Call `setState()` when updating calendar format
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _focusedDay = focusedDay;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<ScheduleEvent>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) => ScheduleRow(
                    event: value[index],
                    date: _focusedDay,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
