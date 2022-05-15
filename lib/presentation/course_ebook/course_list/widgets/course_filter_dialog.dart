import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../../common.dart';
import '../../widgets/course_categories_dropdown.dart';
import '../../widgets/levels_dropdown.dart';
import '../../widgets/sort_by_level_dropdown.dart';

class CourseFilterDialog extends StatelessWidget {
  const CourseFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final bloc = context.read<CourseListBloc>();

        return AlertDialog(
          title: Text(context.l10n.filterDialogTitle),
          content: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 600,
                minWidth: min(
                  MediaQuery.of(context).size.width,
                  500.0,
                )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CourseCategoriesDropdown(
                  allCategories: state.allCategories,
                  selectedCategories: state.categories,
                  onItemRemoved: (_) {},
                  onItemsSelected: (value) => bloc.add(
                    CourseListEvent.categoriesChanged(value.cast()),
                  ),
                ),
                const SizedBox(height: itemSpacing),
                LevelsDropdown(
                  selectedLevels: state.levels,
                  onItemRemoved: (_) {},
                  onItemsSelected: (value) => bloc.add(
                    CourseListEvent.levelsChanged(value.cast()),
                  ),
                ),
                const SizedBox(height: itemSpacing),
                SortByLevelDropdown(
                  value: state.sortBy,
                  onChanged: (value) {
                    bloc.add(CourseListEvent.sortOptionChanged(value));
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                bloc.add(const CourseListEvent.searchOptionCleared());
                context.router.pop();
              },
              child: Text(context.l10n.clearFilterButton),
            ),
            TextButton(
              onPressed: () {
                bloc.add(const CourseListEvent.submitted());
                context.router.pop();
              },
              child: Text(context.l10n.okButton),
            ),
          ],
        );
      },
    );
  }
}
