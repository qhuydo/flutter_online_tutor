import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/history/history_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/paginator.dart';
import '../list/widgets/schedule_list_desktop.dart';
import 'widgets/history_list_mobile.dart';

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

          final paginator = Visibility(
            visible: state.totalPages > 1,
            child: Paginator(
              totalPages: state.totalPages,
              initialPage: state.currentPage - 1,
              onPageChanged: (value) {
                context
                    .read<HistoryBloc>()
                    .add(HistoryEvent.pageChanged(value + 1));
              },
            ),
          );

          final breakpoint = Breakpoint.fromMediaQuery(context);

          return breakpoint.window <= WindowSize.small
              ? HistoryListMobile(history: history, paginator: paginator)
              : ScheduleListDesktop(
                  appointments: history,
                  paginator: paginator,
                  showActionButtons: false,
                );
        },
      ),
    );
  }
}
