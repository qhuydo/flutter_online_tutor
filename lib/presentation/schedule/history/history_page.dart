import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../utils/constants.dart';
import '../../common.dart';

import '../../common/utils/default_app_bar.dart';
import '../list/widgets/schedule_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
        title: AppLocalizations.of(context)!.historyTitle,
      ),
      body: MasonryGridView.extent(
        // primary: false,
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(smallItemSpacing),
        itemCount: 5,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        maxCrossAxisExtent: 600,
        itemBuilder: (context, index) {
          return const ScheduleCard(
            showActionButtons: false,
          );
        },
      ),
    );
  }
}
