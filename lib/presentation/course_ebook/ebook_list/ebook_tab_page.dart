import 'dart:math';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../utils/constants.dart';
import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/ebook_card.dart';

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
      hint: AppLocalizations.of(context)!.findEbookHint,
      actions: actions,
      leadingActions: leadingActions,
      body: FloatingSearchBarScrollNotifier(
        child: MasonryGridView.extent(
          primary: false,
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            top: searchBarHeight + 12,
            left: smallItemSpacing,
            right: smallItemSpacing,
          ),
          itemCount: 5,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          maxCrossAxisExtent: 360,
          itemBuilder: (context, index) {
            return EbookCard(
              thumbnail: bookAssets[Random().nextInt(bookAssets.length)],
            );
          },
        ),
      ),
    );
  }
}
