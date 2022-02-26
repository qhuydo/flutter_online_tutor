import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'ebook_card.dart';

class EbookTabPage extends StatelessWidget {
  const EbookTabPage({Key? key}) : super(key: key);

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

    return ScaffoldWithSearchBar(
      builder: (context, _) => SearchItemRowPlaceholder.buildExpandableBody(),
      hint: 'Find ebooks...',
      actions: actions,
      leadingActions: leadingActions,
      body: FloatingSearchBarScrollNotifier(
        child: MasonryGridView.extent(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: searchBarHeight),
          itemCount: 5,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          maxCrossAxisExtent: 400,
          itemBuilder: (context, index) {
            return const EbookCard();
          },
        ),
      ),
    );
  }
}
