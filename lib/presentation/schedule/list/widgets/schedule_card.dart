import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/widgets/outlined_card.dart';
import 'schedule_card_button_group.dart';
import 'schedule_card_content.dart';
import 'schedule_card_header.dart';

class ScheduleCard extends StatelessWidget {
  final Appointment appointment;
  final bool showActionButtons;

  const ScheduleCard({
    Key? key,
    required this.appointment,
    this.showActionButtons = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: true,
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ScheduleCardHeader(appointment: appointment),
          ScheduleCardContent(appointment: appointment),
          if (showActionButtons) const ScheduleCardButtonGroup(),
        ],
      ),
    );
  }
}
