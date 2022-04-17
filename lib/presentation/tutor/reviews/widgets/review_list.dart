import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

import '../../../../domain/tutor/models/feedback.dart' as feedback;
import '../../../common.dart';
import '../../../common/utils/constants.dart';

class ReviewList extends StatelessWidget {
  final List<feedback.Feedback> feedbackList;

  const ReviewList({
    Key? key,
    required this.feedbackList,
  }) : super(key: key);

  String formatDate(BuildContext context, DateTime value) {
    final locale = Localizations.localeOf(context).languageCode;

    final dateFormatter = DateFormat.yMMMd(locale);
    final timeFormatter = DateFormat.jm(locale);
    return '${dateFormatter.format(value)} '
        '${timeFormatter.format(value)}';
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: itemSpacing),
      itemBuilder: (context, index) {
        final textTheme = Theme.of(context).textTheme;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: itemSpacing,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(feedbackList[index].avatar ?? ''),
                onBackgroundImageError: (exception, stackTrace) {},
              ),
              const SizedBox(width: itemSpacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      feedbackList[index].name,
                      style: textTheme.titleLarge,
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: feedbackList[index].rating.toDouble(),
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20,
                          direction: Axis.horizontal,
                        ),
                        const SizedBox(width: smallItemSpacing),
                        Text(formatDate(
                          context,
                          feedbackList[index].updatedAt,
                        )),
                        if (feedbackList[index].isEdited) ...[
                          const SizedBox(width: 4),
                          Text(
                            context.l10n.editedTextLabel,
                            style: textTheme.caption!.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ]
                      ],
                    ),
                    Text(feedbackList[index].content),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: itemSpacing),
      itemCount: feedbackList.length,
    );
  }
}
