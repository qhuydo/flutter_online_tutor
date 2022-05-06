import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/common/platform/platform_delegate.dart';
import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/paginator.dart';
import '../../common/widgets/search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import '../utils/constants.dart';
import 'widgets/course_filter_dialog.dart';
import 'widgets/course_list_card.dart';

class CourseTabPage extends StatefulWidget {
  const CourseTabPage({Key? key}) : super(key: key);

  @override
  State<CourseTabPage> createState() => _CourseTabPageState();
}

class _CourseTabPageState extends State<CourseTabPage> {
  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    final leadingActions = [
      FloatingSearchBarAction.back(),
    ];

    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final bloc = context.read<CourseListBloc>();

        final actions = [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: true,
          ),
          FloatingSearchBarAction(
            showIfOpened: true,
            child: CircularButton(
              icon: Icon(
                Icons.filter_list,
                color: state.isFilterApplied
                    ? Theme.of(context).colorScheme.secondary
                    : null,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider.value(
                        value: bloc,
                        child: const CourseFilterDialog(),
                      );
                    });
              },
            ),
          ),
        ];

        return SearchBar(
          builder: (_, __) => SearchItemRowPlaceholder.buildExpandableBody(),
          hint: context.l10n.findCourseHint,
          actions: actions,
          leadingActions: leadingActions,
          controller: controller,
          title: Text(
            state.keyword.isNotEmpty
                ? state.keyword
                : context.l10n.findTutorHint,
          ),
          onSubmitted: (keyword) {
            bloc
              ..add(CourseListEvent.keywordChanged(keyword))
              ..add(const CourseListEvent.submitted());
            controller.close();
          },
          body: buildBody(),
        );
      },
    );
  }

  Widget buildBody() {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final list = state.courseList;

        if (state.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(itemSpacing),
              child: LinearProgressIndicator(),
            ),
          );
        }

        if (list == null) {
          // TODO change to error widget
          return SizedBox(
            height: 60,
            child: Center(
              child: Text(context.l10n.valueFalureUnknownError),
            ),
          );
        }

        if (list.isEmpty) {
          return Center(
            child: Center(
              child: EmptyPage(text: context.l10n.emptyResult),
            ),
          );
        }

        final target = Target();

        return FloatingSearchBarScrollNotifier(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AlignedGridView.extent(
                  controller: ScrollController(),
                  primary: false,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: searchBarHeight + 12),
                  itemCount: list.length,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) => LimitedBox(
                      maxHeight:
                          constraints.maxWidth * courseThumbnailRatioInverse +
                              (target.isLinux ? 180 : 150),
                      child: CourseListCard(course: list[index]),
                    ),
                  ),
                  maxCrossAxisExtent: 360,
                ),
                const SizedBox(height: smallItemSpacing),
                Paginator.inputPageCountFrom1(
                  totalPages: state.paginationCourseList!.totalPages,
                  initialPage: state.currentPage,
                  onPageChanged: (pageCountFrom0) {
                    context
                        .read<CourseListBloc>()
                        .add(CourseListEvent.pageChanged(pageCountFrom0 + 1));
                    controller.show();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
