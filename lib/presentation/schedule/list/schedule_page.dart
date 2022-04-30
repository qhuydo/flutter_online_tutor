import 'package:auto_route/auto_route.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../common.dart';
import '../../common/l10n/failure_display_texts.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/flushbar_utils.dart';
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
      child: BlocConsumer<UpcomingClassBloc, UpcomingClassState>(
        listenWhen: (previous, current) =>
            previous.classCancellationStatus != current.classCancellationStatus,
        listener: (context, state) {
          state.classCancellationStatus.when(
            initial: () {},
            loading: () async {
              await showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => const AlertDialog(
                  // TODO update translation
                  title: Text('Loading'),
                  content: SizedBox(
                    height: 50,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              );
            },
            succeed: () async {
              Navigator.of(context).pop();

              context.read<UpcomingClassBloc>().add(
                    const UpcomingClassEvent
                        .classCancellationMessageDisplayed(),
                  );
              FlushBarUtils.createInformation(message: 'Class canceled')
                  .show(context);
            },
            // TODO update translation
            failed: (failure) async {
              Navigator.of(context).pop();

              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Error occurred'),
                  content: Text(failure.toText(context)),
                  actions: [
                    TextButton(
                      onPressed: () => context.popRoute(),
                      child: Text(context.l10n.okButton),
                    ),
                  ],
                ),
              );
              context.read<UpcomingClassBloc>().add(
                    const UpcomingClassEvent
                        .classCancellationMessageDisplayed(),
                  );
            },
          );
        },
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
                  showActionButtons: true,
                  onCancelButtonTapped: (appointment) => context
                      .read<UpcomingClassBloc>()
                      .add(UpcomingClassEvent.cancelClass(appointment)),
                );
        },
      ),
    );
  }
}
