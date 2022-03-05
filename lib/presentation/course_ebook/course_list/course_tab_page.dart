import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../utils/constants.dart';
import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/course_list_card.dart';
import 'widgets/specialities_filter_row.dart';

class CourseTabPage extends StatelessWidget {
  const CourseTabPage({Key? key}) : super(key: key);

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
      hint: AppLocalizations.of(context)!.findCourseHint,
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
                GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  // separatorBuilder: (context, index) => const SizedBox(height: 8,),
                  itemBuilder: (context, index) {
                    return const CourseListCard();
                  },
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //   childAspectRatio: 1/1.25,
                  //   crossAxisCount: 2,
                  // ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 360, childAspectRatio: 1 / 1.25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
