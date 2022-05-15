import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/widgets/outlined_card.dart';
import 'tutor_card_action_buttons.dart';
import 'tutor_card_header.dart';
import 'widgets.dart';

class TutorCard extends StatelessWidget {
  final Tutor tutor;
  final VoidCallback? onFavouriteButtonPressed;
  final bool isLoading;

  const TutorCard({
    Key? key,
    required this.tutor,
    this.isLoading = false,
    this.onFavouriteButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: true,
      onTap: () => context.router.push(TutorDetailsRoute(tutorId: tutor.id)),
      child: ProxyProvider(
        update: (_, __, ___) => tutor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: itemSpacing),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: itemSpacing),
                child: IgnorePointer(child: TutorCardHeader()),
              ),
              const SizedBox(height: 8),
              const TopicList(),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: itemSpacing),
                child: Text(
                  tutor.bio,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: itemSpacing,
                    ),
                    child: TutorCardActionButtons(
                      onFavouriteButtonPressed: onFavouriteButtonPressed,
                      isLoading: isLoading,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
