import '../../../domain/course_ebook/models/sort_level_option.dart';
import '../../common.dart';

extension SortLevelOptionX on SortLevelOption {
  String toText(BuildContext context) {
    switch (this) {
      case SortLevelOption.ascending:
        return context.l10n.sortLevelOptionAscending;
      case SortLevelOption.descending:
        return context.l10n.sortLevelOptionDescending;
    }
  }
}