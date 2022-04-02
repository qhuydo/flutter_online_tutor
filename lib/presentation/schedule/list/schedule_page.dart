import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../common/utils/constants.dart';
import 'widgets/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.extent(
      controller: ScrollController(),
      padding: const EdgeInsets.all(smallItemSpacing),
      itemCount: 5,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      maxCrossAxisExtent: 600,
      itemBuilder: (context, index) {
        return const ScheduleCard();
      },
    );
  }
}
