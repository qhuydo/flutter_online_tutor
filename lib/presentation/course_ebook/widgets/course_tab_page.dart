import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'course_list_card.dart';

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
      hint: 'Find courses...',
      actions: actions,
      leadingActions: leadingActions,
      body: FloatingSearchBarScrollNotifier(
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: searchBarHeight),
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
            maxCrossAxisExtent: 400,
            childAspectRatio: 1/1.25
          ),
        ),
      ),
    );
  }
}