import 'package:auto_route/auto_route.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../utils/string_utils.dart';
import 'tutor_avatar.dart';
import 'tutor_details_button_group.dart';

class TutorDetailsHeader extends StatelessWidget {
  static const itemSpacing = 8.0;
  final String tutorId;

  const TutorDetailsHeader({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  Widget buildRatingBar(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(TutorReviewRoute(tutorId: tutorId));
      },
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          RatingBarIndicator(
            rating: 5,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 12,
            direction: Axis.horizontal,
          ),
          const SizedBox(width: 8),
          Text(
            '(16)',
            style: Theme.of(context).textTheme.caption?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TutorAvatar(),
        const SizedBox(height: itemSpacing),
        Text(
          'Nguyen Van A',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: itemSpacing),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          // spacing: 16,
          children: [
            buildRatingBar(context),
            // const SizedBox(width: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 40,
                child: VerticalDivider(
                  thickness: 1.25,
                  width: 1.25,
                ),
              ),
            ),
            Text(
              'Україна',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: 8),
            Twemoji(
              emoji: 'UA'.toCountryFlagFromCountryCode(),
              width: 44,
              height: 44,
            ),
          ],
        ),
        const SizedBox(height: itemSpacing),
        TutorDetailsButtonGroup(
          tutorId: tutorId,
        ),
      ],
    );
  }
}
