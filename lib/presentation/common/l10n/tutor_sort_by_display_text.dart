import '../../../domain/tutor/models/tutor_search_options.dart';
import '../../common.dart';

extension TutorSortByX on TutorSortBy {
  String toText(BuildContext context) {
    switch (this) {
      case TutorSortBy.defaultSort:
        return context.l10n.tutorSortByDefaultSort;
      case TutorSortBy.favourite:
        return context.l10n.tutorSortByFavourite;
      case TutorSortBy.rating:
        return context.l10n.tutorSortByRating;
    }
  }
}
