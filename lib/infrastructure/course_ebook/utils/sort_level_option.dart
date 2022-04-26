import '../../../domain/course_ebook/models/sort_level_option.dart';

extension SortLevelOptionX on SortLevelOption {
  String toQueryString() {
    switch (this) {
      case SortLevelOption.ascending:
        return 'ASC';
      case SortLevelOption.descending:
        return 'DESC';
    }
  }
}
