import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../common.dart';
import '../common/utils/constants.dart';
import '../schedule/list/widgets/schedule_card.dart';
import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        left: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(smallItemSpacing),
              child: DashboardCard(),
            ),
            if (breakpoint.window <= WindowSize.small)
              BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
                buildWhen: (previous, current) {
                  return previous.nextClass != current.nextClass;
                },
                builder: (context, state) {
                  if (state.nextClass == null ||
                      state.nextClass?.isCancelable == true) {
                    return const SizedBox();
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: smallItemSpacing),
                    child: ScheduleCard(
                      appointment: state.nextClass!,
                      showMeetingDate: false,
                      openMeetingRoomWhenCardTapped: true,
                      showActionButtons: true,
                      showCancelButton: false,
                    ),
                  );
                },
              ),
            const SizedBox(height: smallItemSpacing),
            const RecommendedCourses(),
            const SizedBox(height: itemSpacing),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: smallItemSpacing),
              child: RecommendedTutors(),
            ),
          ],
        ),
      ),
    );
  }
}
