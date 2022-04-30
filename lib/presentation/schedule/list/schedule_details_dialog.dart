import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:duration/duration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../common.dart';
import '../../common/l10n/schedule_display_text.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/duration_utils.dart';
import '../../common/widgets/count_down_timer.dart';
import '../../common/widgets/outlined_card.dart';

// TODO update translation
class ScheduleDetailsDialog extends StatelessWidget {
  const ScheduleDetailsDialog({Key? key}) : super(key: key);

  Widget buildCardRow(
    BuildContext context,
    IconData iconData,
    String title,
    Either<String, Widget> stringOrWidgetContent,
  ) =>
      Row(
        children: [
          Icon(iconData),
          const SizedBox(width: smallItemSpacing),
          Expanded(child: Text(title)),
          const SizedBox(width: itemSpacing),
          Flexible(
            child: stringOrWidgetContent.fold(
              (string) => Text(
                string,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              (widget) => widget,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
        builder: (_, state) {
      if (state.selectedAppointment == null) {
        return const Text('No any schedule was selected');
      }
      final textTheme = Theme.of(context).textTheme;

      final locale = context.l10n.localeName;
      final dateFormatter = DateFormat.yMEd(locale);
      final appointment = state.selectedAppointment!;

      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(smallItemSpacing),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: OutlinedCard(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(itemSpacing),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Schedule details',
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: smallItemSpacing),
                          buildCardRow(
                            context,
                            Icons.hourglass_top,
                            'Time util next lesson',
                            right(CountDownTimer(
                              endTime:
                                  state.selectedAppointment!.meetingTime.end,
                              builder: (_, duration) {
                                return Text(
                                  prettyDuration(
                                    duration,
                                    locale: context.durationLocale,
                                    abbreviated: true,
                                  ),
                                  style: textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            )),
                          ),
                          const SizedBox(height: smallItemSpacing),
                          buildCardRow(
                            context,
                            Icons.event,
                            'Date',
                            left(
                              dateFormatter
                                  .format(appointment.meetingTime.start),
                            ),
                          ),
                          const SizedBox(height: smallItemSpacing),
                          buildCardRow(
                            context,
                            Icons.schedule,
                            'Time',
                            left(appointment.meetingTime
                                .getMeetingTime(context)),
                          ),
                          const SizedBox(height: itemSpacing),
                          ElevatedButton.icon(
                            onPressed: () {
                              context.pushRoute(
                                MeetingRoute(appointment: appointment),
                              );
                            },
                            icon: const Icon(Icons.meeting_room),
                            label: Text(context.l10n.enterLessonRoom),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(56),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(smallItemSpacing),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: OutlinedCard(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(itemSpacing),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Note',
                                style: textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                                label: const Text('Edit note'),
                              ),
                            ],
                          ),
                          const SizedBox(height: smallItemSpacing),
                          Text(appointment.studentRequest)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
