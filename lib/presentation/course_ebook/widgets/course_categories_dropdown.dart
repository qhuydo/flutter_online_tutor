import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../domain/course_ebook/models/course_category.dart';
import '../../common.dart';

class CourseCategoriesDropdown extends StatelessWidget {
  final List<CourseCategory> allCategories;
  final void Function(List<CourseCategory?>) onItemsSelected;
  final List<CourseCategory> selectedCategories;
  final void Function(CourseCategory?) onItemRemoved;
  final bool enabled;

  const CourseCategoriesDropdown({
    Key? key,
    required this.allCategories,
    required this.selectedCategories,
    required this.onItemsSelected,
    required this.onItemRemoved,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = allCategories
        .map((category) => MultiSelectItem<CourseCategory>(
              category,
              category.title,
            ))
        .toList();

    return Column(
      children: <Widget>[
        IgnorePointer(
          ignoring: !enabled,
          child: MultiSelectDialogField<CourseCategory?>(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            listType: MultiSelectListType.CHIP,
            searchable: true,
            buttonText: Text(
              context.l10n.subjectDropdownLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            title: Text(context.l10n.subjectDropdownLabel),
            items: _items,
            initialValue: selectedCategories,
            onConfirm: onItemsSelected,
          ),
        ),
        selectedCategories.isEmpty
            ? Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  context.l10n.noneSelectedOption,
                  style: Theme.of(context).textTheme.caption,
                ))
            : Container(),
      ],
    );
  }
}
