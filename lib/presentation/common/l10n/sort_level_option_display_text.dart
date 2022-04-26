import '../../../domain/course_ebook/models/sort_level_option.dart';
import '../../common.dart';

extension SortLevelOptionX on SortLevelOption {
  // TODO update translation
  String toText(BuildContext context) {
    switch (this) {
      case SortLevelOption.ascending:
        return 'Level ascending';
      case SortLevelOption.descending:
        return 'Level descending';
    }
  }
}