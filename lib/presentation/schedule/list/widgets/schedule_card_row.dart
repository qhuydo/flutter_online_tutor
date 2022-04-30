import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common/l10n/schedule_display_text.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/string_utils.dart';
import '../../../common/widgets/outlined_card.dart';

class ScheduleCardRow extends StatelessWidget {
  final Appointment appointment;
  final VoidCallback? onTap;
  const ScheduleCardRow({
    Key? key,
    required this.appointment,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: true,
      onTap: onTap ?? () {
        context.pushRoute(MeetingRoute(appointment: appointment));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: smallItemSpacing,
                  ),
                  child: Text(
                    appointment.meetingTime.getMeetingTime(context),
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: appointment.tutorAvatar == null
                        ? Colors.grey.withOpacity(0.2)
                        : null,
                    radius: 32,
                    backgroundImage:
                        NetworkImage(appointment.tutorAvatar ?? ''),
                    onBackgroundImageError: (exception, stackTrace) {},
                  ),
                  title: Text(
                    appointment.tutorName,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: smallItemSpacing,
                    children: [
                      Text(
                        appointment.tutorCountry.name,
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.center,
                      ),
                      Twemoji(
                        emoji: appointment.tutorCountry.isoCode
                            .toCountryFlagFromCountryCode(),
                        width: 20,
                        height: 20,
                      )
                    ],
                  ),
                  trailing: const Icon(Icons.navigate_next),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
