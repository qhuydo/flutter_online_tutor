import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../common.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/course_list_card.dart';

class CourseTabPage extends StatelessWidget {
  const CourseTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return getIt<CourseListBloc>()..add(const CourseListEvent.initialise());
      },
      child: const _CourseTabPage(),
    );
  }
}

class _CourseTabPage extends StatelessWidget {
  const _CourseTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = Platform.isLinux || Platform.isMacOS || Platform.isWindows;

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
      body: BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) {
          final list = state.courseList;

          if (list == null) {
            return const SizedBox(
              height: 60,
              child: Center(
                // TODO update translation
                child: Text('Error occurred'),
              ),
            );
          }
          return FloatingSearchBarScrollNotifier(
            child: AlignedGridView.extent(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: searchBarHeight + 12),
              itemCount: list.length,
              itemBuilder: (context, index) => LimitedBox(
                maxHeight: isDesktop ? 360 : 300,
                child: CourseListCard(
                  course: list[index],
                ),
              ),
              maxCrossAxisExtent: 360,
            ),
          );
        },
      ),
    );
  }
}
