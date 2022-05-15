import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../common.dart';
import '../../common/utils/dialog_utils.dart';
import '../../common/utils/flushbar_utils.dart';
import '../../common/widgets/empty_page.dart';
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
            loading: () => showLoadingDialog(context),
            succeed: () async {
              Navigator.of(context).pop();

              context.read<UpcomingClassBloc>().add(
                    const UpcomingClassEvent
                        .classCancellationMessageDisplayed(),
                  );
              FlushBarUtils.createInformation(
                message: context.l10n.classCanceledLabel,
              ).show(context);
            },
            failed: (failure) async {
              Navigator.of(context).pop();

              await showErrorDialog(context, failure);

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
          if (upcomingClasses == null || upcomingClasses.isEmpty) {
            return EmptyPage(text: context.l10n.emptyResult);
          }
          final breakpoint = Breakpoint.fromMediaQuery(context);
          final paginator = Paginator.inputPageCountFrom1(
            totalPages: state.totalPages,
            initialPage: state.currentPage,
            onPageChanged: (pageValueCountFrom0) {
              context
                  .read<UpcomingClassBloc>()
                  .add(UpcomingClassEvent.pageChanged(pageValueCountFrom0 + 1));
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
                  onCancelButtonTapped: (appointment) {
                    showCancelClassConfirmDialog(context, appointment);
                  },
                );
        },
      ),
    );
  }

  void showCancelClassConfirmDialog(
    BuildContext context,
    Appointment appointment,
  ) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(context.l10n.cancelClassDialogContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(context.l10n.no),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context
                  .read<UpcomingClassBloc>()
                  .add(UpcomingClassEvent.cancelClass(appointment));
            },
            child: Text(context.l10n.yes),
          ),
        ],
      ),
    );
  }
}
