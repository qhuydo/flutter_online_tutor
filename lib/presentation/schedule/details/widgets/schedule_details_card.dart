import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:duration/duration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../../../domain/schedule/models/appointment_status.dart';
import '../../../common.dart';
import '../../../common/l10n/schedule_display_text.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/duration_utils.dart';
import '../../../common/widgets/count_down_timer.dart';
import '../../../common/widgets/outlined_card.dart';
import '../../utils/appointment_dialogues.dart';
import 'appointment_status_label.dart';
import 'schedule_details_card_row.dart';

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
                          context.l10n.scheduleDetailsLabel,
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        CountDownTimer(
                          endTime: appointment.cancelDeadline,
                          builder: (_, __) {
                            return Visibility(
                              visible: appointment.isCancelable,
                              child: TextButton.icon(
                                icon: const Icon(Icons.cancel_outlined),
                                label: Text(context.l10n.cancelButtonLabel),
                                onPressed: () {
                                  showCancelClassConfirmDialog(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.info_outlined,
                      title: context.l10n.statusLabel,
                      stringOrWidgetContent: right(CountDownTimer(
                        endTime: appointment.meetingTime.end,
                        builder: (_, __) => AppointmentStatusLabel(
                          status: appointment.status,
                        ),
                      )),
                    ),
                    const SizedBox(height: smallItemSpacing),
                    CountDownTimer(
                      endTime: appointment.meetingTime.start,
                      builder: (_, duration) => Visibility(
                        visible: !duration.isNegative &&
                            duration.compareTo(Duration.zero) != 0,
                        child: ScheduleDetailsCardRow(
                          iconData: Icons.hourglass_top,
                          title: context.l10n.timeUntilNextLessonLabel,
                          stringOrWidgetContent: right(Text(
                            prettyDuration(
                              duration,
                              locale: context.durationLocale,
                              abbreviated: true,
                            ),
                            style: textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ),
                    CountDownTimer(
                      endTime: appointment.meetingTime.end,
                      durationBuilder: () {
                        return DateTime.now().difference(
                          appointment.meetingTime.start,
                        );
                      },
                      builder: (_, duration) {
                        return Visibility(
                          visible:
                              appointment.status == AppointmentStatus.ongoing,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: smallItemSpacing,
                            ),
                            child: ScheduleDetailsCardRow(
                              iconData: Icons.timer_outlined,
                              title: context.l10n.meetingTimeCountingLabel,
                              stringOrWidgetContent: left(prettyDuration(
                                duration,
                                locale: context.durationLocale,
                                abbreviated: true,
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.event,
                      title: context.l10n.meetingDate,
                      stringOrWidgetContent: left(
                        dateFormatter.format(appointment.meetingTime.start),
                      ),
                    ),
                    const SizedBox(height: smallItemSpacing),
                    ScheduleDetailsCardRow(
                      iconData: Icons.schedule,
                      title: context.l10n.meetingTimeLabel,
                      stringOrWidgetContent:
                          left(appointment.meetingTime.getMeetingTime(context)),
                    ),
                    const SizedBox(height: itemSpacing),
                    CountDownTimer(
                      endTime: appointment.roomClosingTime,
                      builder: (_, __) {
                        return Visibility(
                          visible: !appointment.isRoomClosed,
                          child: ElevatedButton.icon(
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
                        );
                      },
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
}
