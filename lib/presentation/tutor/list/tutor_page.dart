import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../common/utils/constants.dart';
import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import '../list/widgets/tutor_card.dart';
import 'widgets/specialities_filter_row.dart';
import 'widgets/tutor_filter_dialog.dart';

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
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return const TutorFilterDialog();
            });
          },
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
        child: SingleChildScrollView(
          primary: false,
          child: Padding(
            padding: const EdgeInsets.only(
              top: searchBarHeight + 12,
              left: smallItemSpacing,
              right: smallItemSpacing,
            ),
            child: Column(
              children: [
                const SizedBox(child: SpecialitiesFilterRow(), height: 40,),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  // separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return const TutorCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
