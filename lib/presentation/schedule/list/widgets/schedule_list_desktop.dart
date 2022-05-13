import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/empty_page.dart';
import 'refresh_schedule_button.dart';
import 'schedule_card.dart';

class ScheduleListDesktop extends StatelessWidget {
  final List<Appointment> appointments;
  final Widget? paginator;
  final bool showActionButtons;
  final ValueChanged<Appointment>? onCancelButtonTapped;

  const ScheduleListDesktop({
    Key? key,
    required this.appointments,
    this.paginator,
    this.showActionButtons = false,
    this.onCancelButtonTapped,
  }) : super(key: key);

  Widget buildLoadingWidget() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(itemSpacing),
        child: LinearProgressIndicator(),
      ),
    );
  }

  Future<Map<DateTime, List<Appointment>>> _groupAppointments(
    List<Appointment> appointments,
  ) {
    final completer = Completer<Map<DateTime, List<Appointment>>>();

    completer.complete(appointments.groupListsBy(
      (element) => DateTime(
        element.meetingTime.start.year,
        element.meetingTime.start.month,
        element.meetingTime.start.day,
      ),
    ));
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _groupAppointments(appointments),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return buildLoadingWidget();
        if (snapshot.hasError) return const EmptyPage();

        final map = snapshot.data as Map<DateTime, List<Appointment>>;

        return Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                children: [
                  Center(
                    child: buildScheduleList(map, context),
                  ),
                  if (paginator != null) ...[
                    paginator!,
                    const SizedBox(height: smallItemSpacing),
                  ],
                ],
              ),
            ),
            const RefreshScheduleButton(),
          ],
        );
      },
    );
  }

  ListView buildScheduleList(
    Map<DateTime, List<Appointment>> map,
    BuildContext context,
  ) {
    final locale = context.l10n.localeName;

    final dateFormatter = DateFormat.yMMMMEEEEd(locale);

    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: itemSpacing,
        horizontal: smallItemSpacing,
      ),
      itemCount: map.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: smallItemSpacing,
      ),
      itemBuilder: (_, index) => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: itemSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dateFormatter.format(map.keys.elementAt(index)),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: smallItemSpacing),
                  Text(
                    context.l10n.appointmentCountLabel(
                      map.values.elementAt(index).length,
                    ),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final appointment in map.values.elementAt(index))
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 800,
                    ),
                    child: ScheduleCard(
                      appointment: appointment,
                      showMeetingDate: false,
                      openMeetingRoomWhenCardTapped: false,
                      showActionButtons: showActionButtons,
                      onCancelButtonTapped: onCancelButtonTapped,
                      onTap: () {
                        context.pushRoute(
                          ScheduleDetailsRoute(appointment: appointment),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
