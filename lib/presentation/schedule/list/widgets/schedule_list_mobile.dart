import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../../domain/schedule/models/appointment.dart';
import '../../../../domain/schedule/utils/schedule_utils.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../details/schedule_details_page.dart';
import 'schedule_card_row.dart';

class ScheduleListMobile extends StatelessWidget {
  final List<Appointment> appointments;
  final Widget? paginator;

  const ScheduleListMobile({
    Key? key,
    required this.appointments,
    this.paginator,
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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GroupedListView<Appointment, DateTime>(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            order: GroupedListOrder.ASC,
            useStickyGroupSeparators: true,
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
              onTap: () => onCardTapped(context, element),
            ),
            itemComparator: (item1, item2) {
              return item1.meetingTime.start.compareTo(item2.meetingTime.start);
            },
          ),
          if (paginator != null) ...[
            paginator!,
            const SizedBox(height: smallItemSpacing),
          ],
        ],
      ),
    );
  }

  void onCardTapped(BuildContext context, Appointment element) async {
    final bloc = context.read<UpcomingClassBloc>();
    bloc.add(UpcomingClassEvent.appointmentSelected(element));

    final widget = BlocProvider.value(
      value: bloc,
      child: const ScheduleDetailsDialog(),
    );
    final breakpoint = Breakpoint.fromMediaQuery(context);

    if (breakpoint.window <= WindowSize.small) {
      await showGeneralDialog(
        barrierColor: Colors.transparent,
        context: context,
        pageBuilder: (context, __, ___) {
          return Scaffold(
            appBar: buildAppBar(context),
            body: widget,
          );
        },
      );
    } else {
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(content: widget);
        },
      );
    }
  }
}
