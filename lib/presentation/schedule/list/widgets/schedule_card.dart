import '../../../common.dart';
import 'schedule_card_button_group.dart';
import 'schedule_card_content.dart';
import 'schedule_card_header.dart';

class ScheduleCard extends StatelessWidget {
  final showActionButtons;

  const ScheduleCard({
    Key? key,
    this.showActionButtons = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = Theme.of(context).brightness == Brightness.light;
    return Card(
      color: lightTheme
          ? Colors.grey[100]?.withOpacity(0.9)
          : Colors.grey[100]?.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const ScheduleCardHeader(),
          ScheduleCardContent(),
          if (showActionButtons) const ScheduleCardButtonGroup(),
        ],
      ),
    );
  }
}
