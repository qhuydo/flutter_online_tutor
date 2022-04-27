import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../domain/schedule/utils/schedule_utils.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import 'widgets/schedule_card_row.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(itemSpacing),
                child: LinearProgressIndicator(),
              ),
            );
          }

          final upcomingClasses = state.upcomingClasses;
          if (upcomingClasses == null) return const SizedBox();

          return GroupedListView<Appointment, DateTime>(
            padding: const EdgeInsets.symmetric(
              vertical: itemSpacing,
              horizontal: smallItemSpacing,
            ),
            elements: upcomingClasses,
            stickyHeaderBackgroundColor:
                Theme.of(context).appBarTheme.backgroundColor!,
            groupBy: (element) => element.meetingTime.start.keepDayInfo(),
            groupSeparatorBuilder: (time) => buildHeader(context, time),
            itemBuilder: (context, element) => ScheduleCardRow(
              appointment: element,
            ),
            itemComparator: (item1, item2) {
              return item1.meetingTime.start.compareTo(item2.meetingTime.start);
            },
            useStickyGroupSeparators: true,
            // floatingHeader: true,
            order: GroupedListOrder.ASC, // optional
          );
        },
      ),
    );
  }

  Widget buildHeader(BuildContext context, DateTime time) {
    final locale = context.l10n.localeName;
    // final weekdayFormatter = DateFormat('EEEE', locale);
    final dateFormatter = DateFormat.yMMMMEEEEd(locale);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        dateFormatter.format(time),
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
