import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common/utils/constants.dart';
import '../../list/widgets/schedule_card.dart';

class HistoryListMobile extends StatelessWidget {
  final List<Appointment> history;
  final Widget? paginator;

  const HistoryListMobile({
    Key? key,
    required this.history,
    this.paginator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MasonryGridView.extent(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(smallItemSpacing),
            itemCount: history.length,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            maxCrossAxisExtent: 600,
            itemBuilder: (context, index) =>
                ScheduleCard(
                  appointment: history[index],
                  showActionButtons: false,
                ),
          ),
          if (paginator != null) ...[
            paginator!,
            const SizedBox(height: smallItemSpacing),
          ],
        ],
      ),
    );
  }
}
