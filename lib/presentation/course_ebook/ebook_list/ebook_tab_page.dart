import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/course_ebook/ebook_list/ebook_list_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/ebook_card.dart';

class EbookTabPage extends StatelessWidget {
  const EbookTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<EbookListBloc>()..add(const EbookListEvent.initialise());
      },
      child: const _EbookTabPage(),
    );
  }
}

class _EbookTabPage extends StatelessWidget {
  const _EbookTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actions = [
      FloatingSearchBarAction.searchToClear(
        showIfClosed: true,
      ),
      FloatingSearchBarAction(
        showIfOpened: true,
        child: CircularButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {},
        ),
      ),
    ];

    final leadingActions = [
      FloatingSearchBarAction.back(),
    ];

    return SearchBar(
      builder: (context, _) => SearchItemRowPlaceholder.buildExpandableBody(),
      hint: AppLocalizations.of(context)!.findEbookHint,
      actions: actions,
      leadingActions: leadingActions,
      body: BlocBuilder<EbookListBloc, EbookListState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(itemSpacing),
                child: LinearProgressIndicator(),
              ),
            );
          }

          final list = state.ebookList;
          if (list == null) return const SizedBox();

          return FloatingSearchBarScrollNotifier(
            child: MasonryGridView.extent(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                top: searchBarHeight + 12,
                left: smallItemSpacing,
                right: smallItemSpacing,
              ),
              itemCount: list.length,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              maxCrossAxisExtent: 360,
              itemBuilder: (context, index) => EbookCard(ebook: list[index]),
            ),
          );
        },
      ),
    );
  }
}
