import 'dart:async';

import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/empty_page.dart';
import 'schedule_card.dart';

class ScheduleListDesktop extends StatelessWidget {
  final List<Appointment> appointments;
  final Widget? paginator;

  const ScheduleListDesktop({
    Key? key,
    required this.appointments,
    this.paginator,
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
        final locale = context.l10n.localeName;
        final dateFormatter = DateFormat.yMMMMEEEEd(locale);

        return SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: ListView.separated(
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
                                // TODO update translation
                                '${map.values.elementAt(index).length} appointments',
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
                            for (final appointment
                                in map.values.elementAt(index))
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 800),
                                child: ScheduleCard(
                                  appointment: appointment,
                                  showMeetingDate: false,
                                  openMeetingRoomWhenCardTapped: true,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (paginator != null) ...[
                paginator!,
                const SizedBox(height: smallItemSpacing),
              ],
            ],
          ),
        );
      },
    );
  }
}
