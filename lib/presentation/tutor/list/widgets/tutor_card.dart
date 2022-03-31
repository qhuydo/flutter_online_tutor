import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
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
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(TutorDetailsRoute(
            tutorId: tutor.id,
          ));
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ProxyProvider(
            update: (_, __, ___) => tutor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TutorCardHeader(),
                const SizedBox(height: 8),
                const TopicList(),
                const SizedBox(height: 8),
                Text(
                  tutor.bio,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 16),
                TutorCardActionButtons(
                  onFavouriteButtonPressed: onFavouriteButtonPressed,
                  isLoading: isLoading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
