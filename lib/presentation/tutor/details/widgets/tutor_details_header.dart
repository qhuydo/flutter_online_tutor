import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/string_utils.dart';
import 'tutor_details_button_group.dart';

class TutorDetailsHeader extends StatelessWidget {
  final bool showBookButton;

  const TutorDetailsHeader({
    Key? key,
    this.showBookButton = true,
  }) : super(key: key);

  Widget buildRatingBar(BuildContext context, Tutor tutor) {
    return InkWell(
      onTap: () {
        context.router.push(TutorReviewRoute(tutorId: tutor.id, tutor: tutor));
      },
      child: Wrap(
        alignment: WrapAlignment.center,
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
          const SizedBox(width: 8),
          Text(
            '(${tutor.feedbacks.length})',
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
    return BlocBuilder<TutorDetailsBloc, TutorDetailsState>(
      builder: (context, state) {
        final tutor = state.tutorOrFailure.fold((l) => null, (r) => r);
        if (tutor == null) return const SizedBox();

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  minRadius: 40,
                  maxRadius: 60,
                  backgroundImage:
                      tutor.avatar != null ? NetworkImage(tutor.avatar!) : null,
                  backgroundColor: tutor.avatar == null
                      ? Colors.grey.withOpacity(0.2)
                      : null,
                ),
              ),
            ),
            const SizedBox(height: smallItemSpacing),
            Text(
              tutor.name,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: smallItemSpacing),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              // spacing: 16,
              children: [
                buildRatingBar(context, tutor),
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
                  tutor.country.name,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(width: smallItemSpacing),
                Twemoji(
                  emoji: tutor.country.isoCode.toCountryFlagFromCountryCode(),
                  width: 44,
                  height: 44,
                ),
              ],
            ),
            const SizedBox(height: smallItemSpacing),
            TutorDetailsButtonGroup(showBookButton: showBookButton),
          ],
        );
      },
    );
  }
}
