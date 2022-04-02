import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../application/schedule/history/history_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import '../list/widgets/schedule_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HistoryBloc>()..add(const HistoryEvent.initialise()),
      child: const _HistoryPage(),
    );
  }
}

class _HistoryPage extends StatelessWidget {
  const _HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.historyTitle,
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(itemSpacing),
                child: LinearProgressIndicator(),
              ),
            );
          }

          final history = state.history;
          if (history == null) return const SizedBox();

          return MasonryGridView.extent(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(smallItemSpacing),
            itemCount: history.length,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            maxCrossAxisExtent: 600,
            itemBuilder: (context, index) => ScheduleCard(
              appointment: history[index],
              showActionButtons: false,
            ),
          );
        },
      ),
    );
  }
}
