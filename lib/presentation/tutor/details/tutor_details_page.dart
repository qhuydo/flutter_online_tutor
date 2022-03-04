import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import 'widgets/widgets.dart';

class TutorDetailsPage extends StatelessWidget {
  static const itemSpacing = 8.0;
  final String tutorId;

  const TutorDetailsPage({
    Key? key,
    @PathParam('tutorId') required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              AppLocalizations.of(context)!.tutorDetailsPageTitle,
            ),
            elevation: 0,
            // backgroundColor: Theme.of(context).colorScheme.surface,
            // foregroundColor: Theme.of(context).colorScheme.onSurface,
            centerTitle: true,
            floating: true,
            stretch: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: itemSpacing),
                TutorDetailsHeader(tutorId: tutorId,),
                const TutorDetailsContent(),
                const TutorRecommendedCourseList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
