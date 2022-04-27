import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/paginator.dart';
import 'widgets/schedule_list_desktop.dart';
import 'widgets/schedule_list_mobile.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  Widget buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(itemSpacing),
        child: LinearProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      child: BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
        builder: (context, state) {
          if (state.isLoading) {
            return buildLoadingWidget();
          }

          final upcomingClasses = state.upcomingClasses;
          if (upcomingClasses == null) return const SizedBox();
          final breakpoint = Breakpoint.fromMediaQuery(context);
          final paginator = Paginator(
            totalPages: state.totalPages,
            initialPage: state.currentPage - 1,
            onPageChanged: (value) {
              context
                  .read<UpcomingClassBloc>()
                  .add(UpcomingClassEvent.pageChanged(value + 1));
            },
          );
          return breakpoint.window <= WindowSize.small
              ? ScheduleListMobile(
                  appointments: upcomingClasses,
                  paginator: paginator,
                )
              : ScheduleListDesktop(
                  appointments: upcomingClasses,
                  paginator: paginator,
                );
        },
      ),
    );
  }
}
