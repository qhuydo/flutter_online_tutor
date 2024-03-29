import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class TutorCardActionButtons extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onFavouriteButtonPressed;

  const TutorCardActionButtons({
    Key? key,
    this.onFavouriteButtonPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tutor = context.watch<Tutor>();
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.spaceBetween,
        alignment: WrapAlignment.spaceBetween,
        children: [
          isLoading
              ? const CircularProgressIndicator()
              : IconButton(
                  onPressed: onFavouriteButtonPressed,
                  icon: Icon(
                    tutor.isFavourite ? Icons.favorite : Icons.favorite_border,
                    size: 28,
                    color: tutor.isFavourite
                        ? Theme.of(context).colorScheme.secondary
                        : null,
                  ),
                  tooltip: context.l10n.addToFavouriteTooltip,
                ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              OutlinedButton(
                onPressed: () {
                  context.router.push(
                    TutorScheduleRoute(tutorId: tutor.id),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.event),
                    const SizedBox(width: 4),
                    Text(context.l10n.bookButtonText),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  context.router.push(MessageDetailsRoute(
                    tutorId: tutor.id,
                    partnerName: tutor.name,
                    partnerThumbnail: tutor.avatar,
                  ));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.chat_bubble_outline),
                    const SizedBox(width: 4),
                    Text(context.l10n.chatButtonText),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
