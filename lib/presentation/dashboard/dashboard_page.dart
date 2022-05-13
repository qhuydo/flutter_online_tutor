import 'package:auto_route/auto_route.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/common/platform/platform_delegate.dart';
import '../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../common.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/utils/constants.dart';
import '../schedule/list/widgets/schedule_card.dart';
import 'widgets/refresh_dashboard_button.dart';
import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return SafeArea(
      left: true,
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (_, constraints) => ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: RefreshIndicator(
                onRefresh: () async {
                  RefreshDashboardButton.onRefreshed(context);
                },
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 80),
                  controller: ScrollController(),
                  physics: const BouncingScrollPhysics(),
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
                                horizontal: smallItemSpacing,
                              ),
                              child: ScheduleCard(
                                appointment: state.nextClass!,
                                showMeetingDate: false,
                                openMeetingRoomWhenCardTapped: false,
                                showActionButtons: true,
                                showCancelButton: false,
                                onTap: () {
                                  context.pushRoute(ScheduleDetailsRoute(
                                    appointment: state.nextClass!,
                                  ));
                                },
                              ),
                            );
                          },
                        ),
                      const SizedBox(height: smallItemSpacing),
                      const RecommendedCourses(),
                      const SizedBox(height: itemSpacing),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: smallItemSpacing,
                        ),
                        child: RecommendedTutors(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (Target().isDesktop) const RefreshDashboardButton(),
        ],
      ),
    );
  }
}
