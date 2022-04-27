import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../../domain/schedule/utils/schedule_utils.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import 'schedule_card_row.dart';

class ScheduleListMobile extends StatelessWidget {
  final List<Appointment> appointments;

  const ScheduleListMobile({
    Key? key,
    required this.appointments,
  }) : super(key: key);

  Widget buildHeader(BuildContext context, DateTime time) {
    final locale = context.l10n.localeName;
    final dateFormatter = DateFormat.yMMMMEEEEd(locale);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        dateFormatter.format(time),
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GroupedListView<Appointment, DateTime>(
      padding: const EdgeInsets.symmetric(
        vertical: itemSpacing,
        horizontal: smallItemSpacing,
      ),
      elements: appointments,
      stickyHeaderBackgroundColor:
          Theme.of(context).appBarTheme.backgroundColor!,
      groupBy: (element) => element.meetingTime.start.keepDayInfo(),
      groupSeparatorBuilder: (time) => buildHeader(context, time),
      itemBuilder: (context, element) => ScheduleCardRow(
        appointment: element,
      ),
      itemComparator: (item1, item2) {
        return item1.meetingTime.start.compareTo(item2.meetingTime.start);
      },
      useStickyGroupSeparators: true,
      // floatingHeader: true,
      order: GroupedListOrder.ASC, // optional
    );
  }
}
