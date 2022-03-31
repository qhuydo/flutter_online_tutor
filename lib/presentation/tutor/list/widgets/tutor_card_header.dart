import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/utils/string_utils.dart';
import 'widgets.dart';

class TutorCardHeader extends StatelessWidget {
  const TutorCardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutor = context.watch<Tutor>();
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TutorAvatar(tutor: tutor),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tutor.name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  RatingBarIndicator(
                    rating: tutor.averageRating,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12,
                    direction: Axis.horizontal,
                  ),
                  Text(
                    tutor.country.name,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
        Twemoji(
          emoji: context
              .read<Tutor>()
              .country
              .isoCode
              .toCountryFlagFromCountryCode(),
          width: 44,
          height: 44,
        ),
      ],
    );
  }
}
