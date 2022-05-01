import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:duration/duration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../../common.dart';
import '../../../common/l10n/schedule_display_text.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/duration_utils.dart';
import '../../../common/widgets/count_down_timer.dart';
import '../../../common/widgets/outlined_card.dart';
import 'schedule_details_card_row.dart';

// TODO update translation
class ScheduleDetailsCard extends StatelessWidget {
  const ScheduleDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleDetailsBloc, ScheduleDetailsState>(
        builder: (_, state) {
      final textTheme = Theme.of(context).textTheme;

      final locale = context.l10n.localeName;
      final dateFormatter = DateFormat.yMEd(locale);
      final appointment = state.appointment;

      return Padding(
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
                          'Schedule details',
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        if (appointment.isCancelable)
                          TextButton.icon(
                            icon: const Icon(Icons.cancel_outlined),
                            label: Text(context.l10n.cancelButtonLabel),
                            onPressed: () {
                              showCancelClassConfirmDialog(context);
                            },
                            style: OutlinedButton.styleFrom(
                              primary: Colors.red,
                            ),
                          ),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.hourglass_top,
                      title: 'Time util next lesson',
                      stringOrWidgetContent: right(CountDownTimer(
                        endTime: appointment.meetingTime.end,
                        builder: (_, duration) => Text(
                          prettyDuration(
                            duration,
                            locale: context.durationLocale,
                            abbreviated: true,
                          ),
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.event,
                      title: 'Date',
                      stringOrWidgetContent: left(
                        dateFormatter.format(appointment.meetingTime.start),
                      ),
                    ),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.schedule,
                      title: 'Time',
                      stringOrWidgetContent:
                          left(appointment.meetingTime.getMeetingTime(context)),
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
      );
    });
  }

  void showCancelClassConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Cancel class?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              context
                  .read<ScheduleDetailsBloc>()
                  .add(const ScheduleDetailsEvent.cancelClass());
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
