import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../tutor/list/widgets/tutor_card.dart';

class RecommendedTutors extends StatelessWidget {
  const RecommendedTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            children: [
              // Twemoji(emoji: '🌟'),
              Text(
                '🌟 ' + AppLocalizations.of(context)!.recommendedTutors,
                maxLines: 2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      // decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.start,
              ),
              TextButton(
                onPressed: () {
                  context.navigateTo(const TutorRoute());
                },
                child: Wrap(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.seeMoreButtonText,
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              )
            ],
          ),
        ),
        // const SizedBox(height: 16),
        ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 8);
          },
          itemBuilder: (BuildContext context, int index) {
            return const TutorCard();
          },
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          itemCount: 5,
          shrinkWrap: true,
        ),
        // const TutorCard(),
      ],
    );
  }
}
