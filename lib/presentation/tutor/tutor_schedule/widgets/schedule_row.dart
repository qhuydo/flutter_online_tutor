import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';
import '../utils/schedule_extension.dart';
import 'book_dialog.dart';

class ScheduleRow extends StatelessWidget {
  final Schedule schedule;

  const ScheduleRow({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  Widget buildTrailingWidget(BuildContext context) {
    if (schedule.isBooked) {
      return TextButton(
        child: Text(
          context.l10n.bookedLabel,
          style: Theme.of(context).textTheme.button?.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        onPressed: null,
      );
    }
    if (schedule.isReserved) {
      return TextButton(
        child: Text(
          context.l10n.reservedLabel,
          style: Theme.of(context).textTheme.button?.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        onPressed: null,
      );
    }
    return TextButton(
      child: Text(context.l10n.bookButtonText),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return BookDialog(
                schedule: schedule,
              );
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(schedule.meetingTime.getMeetingTime(context)),
        trailing: buildTrailingWidget(context),
      ),
    );
  }
}
