import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../../../domain/schedule/models/schedule.dart';
import '../../../../domain/schedule/utils/schedule_utils.dart';
import '../../../common.dart';

class ScheduleCalendar extends StatelessWidget {
  const ScheduleCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return BlocBuilder<TutorScheduleBloc, TutorScheduleState>(
      builder: (context, state) {
        final eventMap = state.scheduleOrFailure.fold((l) {
          log('$l');
          return <DateTime, List<Schedule>>{};
        }, (r) => r);

        final theme = Theme.of(context);

        return IgnorePointer(
          ignoring: state.isLoading,
          child: TableCalendar(
            headerVisible: true,
            daysOfWeekHeight: Platform.isLinux ? 16 + 16 : 20,
            locale: locale,
            calendarFormat: state.format,
            focusedDay: state.focusedDay,
            firstDay: state.firstDay,
            lastDay: state.lastDay,
            eventLoader: (day) =>
                eventMap[day.keepDayInfo()] != null ? [1] : [],
            selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) =>
                context.read<TutorScheduleBloc>().add(
                      TutorScheduleEvent.dateSelected(
                        selectedDay: selectedDay,
                        focusedDay: focusedDay,
                      ),
                    ),
            onPageChanged: (focusedDay) {
              context.read<TutorScheduleBloc>().add(
                    TutorScheduleEvent.dateSelected(
                      selectedDay: state.selectedDay ?? DateTime.now(),
                      focusedDay: focusedDay,
                    ),
                  );
            },
            onFormatChanged: (format) {
              if (format != state.format) {
                context
                    .read<TutorScheduleBloc>()
                    .add(TutorScheduleEvent.formatChanged(format: format));
              }
            },
            calendarStyle: CalendarStyle(
              canMarkersOverflow: false,
              markerDecoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: theme.primaryColorDark,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: theme.primaryColorLight,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}
