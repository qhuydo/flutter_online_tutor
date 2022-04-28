import 'package:auto_route/auto_route.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/outlined_card.dart';
import 'schedule_card_button_group.dart';
import 'schedule_card_content.dart';
import 'schedule_card_header.dart';

class ScheduleCard extends StatelessWidget {
  final Appointment appointment;
  final bool showActionButtons;
  final bool showMeetingDate;
  final bool openMeetingRoomWhenCardTapped;
  final ValueChanged<Appointment>? onCancelButtonTapped;

  const ScheduleCard({
    Key? key,
    required this.appointment,
    this.showActionButtons = true,
    this.showMeetingDate = true,
    this.openMeetingRoomWhenCardTapped = false,
    this.onCancelButtonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: true,
      onTap: () {
        if (openMeetingRoomWhenCardTapped) {
          context.pushRoute(MeetingRoute(appointment: appointment));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ScheduleCardHeader(
            appointment: appointment,
            showMeetingDate: showMeetingDate,
          ),
          ScheduleCardContent(appointment: appointment),
          if (showActionButtons)
            Padding(
              padding: const EdgeInsets.only(bottom: smallItemSpacing),
              child: ScheduleCardButtonGroup(
                appointment: appointment,
                onCancelButtonTapped: onCancelButtonTapped,
              ),
            ),
        ],
      ),
    );
  }
}
