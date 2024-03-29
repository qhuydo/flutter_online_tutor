import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/l10n/schedule_display_text.dart';

class ScheduleCardContent extends StatelessWidget {
  final Appointment appointment;

  const ScheduleCardContent({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      // padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: itemSpacing,
              vertical: smallItemSpacing,
            ),
            child: Wrap(
              spacing: smallItemSpacing,
              runSpacing: smallItemSpacing,
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                Text(
                  context.l10n.lessonTimeDescription,
                  style: textTheme.titleMedium,
                ),
                Text(
                  appointment.meetingTime.getMeetingTime(context),
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 8),
          ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            expandedAlignment: Alignment.topLeft,
            childrenPadding: const EdgeInsets.symmetric(
              horizontal: itemSpacing,
              vertical: smallItemSpacing,
            ),
            leading: const Icon(Icons.event),
            title: Text(context.l10n.requestForLessonLabel),
            children: [
              Text(appointment.studentRequest),
            ],
          ),
        ],
      ),
    );
  }
}
