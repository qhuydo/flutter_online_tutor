import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import '../list/widgets/tutor_card.dart';

class TutorPage extends StatelessWidget {
  const TutorPage({Key? key}) : super(key: key);

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
      hint: AppLocalizations.of(context)!.findTutorHint,
      actions: actions,
      leadingActions: leadingActions,
      body: FloatingSearchBarScrollNotifier(
        child: ListView.builder(
          padding: const EdgeInsets.only(top: searchBarHeight),
          itemCount: 5,
          // separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return const TutorCard();
          },
        ),
      ),
    );
  }
}
