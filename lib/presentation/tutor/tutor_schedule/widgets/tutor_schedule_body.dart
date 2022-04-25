import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../../common/utils/constants.dart';
import 'schedule_calendar.dart';
import 'schedule_row.dart';

class TutorScheduleBody extends StatelessWidget {
  final bool? primary;
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final bool wrap;

  const TutorScheduleBody({
    Key? key,
    this.primary,
    this.shrinkWrap,
    this.physics,
    this.wrap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        wrap
            ? const Flexible(child: ScheduleCalendar())
            : const ScheduleCalendar(),
        const SizedBox(height: 8.0),
        wrap ? buildScheduleList() : Expanded(child: buildScheduleList()),
      ],
    );
  }

  Widget buildScheduleList() {
    return BlocBuilder<TutorScheduleBloc, TutorScheduleState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: LinearProgressIndicator(),
          );
        }

        final eventMap = state.scheduleOrFailure.fold(
          (l) {
            log('$l');
            return null;
          },
          (r) => r,
        );

        if (eventMap == null) return const SizedBox();

        if (state.currentSchedule == null ||
            state.currentSchedule?.isEmpty == true) {
          // TODO update translation
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(itemSpacing),
              child: Text('No schedules are available for this day'),
            ),
          );
        }

        return ListView.builder(
          primary: primary,
          shrinkWrap: shrinkWrap ?? false,
          physics: physics,
          itemCount: state.currentSchedule?.length ?? 0,
          itemBuilder: (context, index) => ScheduleRow(
            schedule: state.currentSchedule![index],
          ),
        );
      },
    );
  }
}
