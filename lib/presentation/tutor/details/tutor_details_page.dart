import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../utils/default_app_bar.dart';
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
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.tutorDetailsPageTitle,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              TutorDetailsHeader(),
              TutorDetailsContent(),
              TutorRecommendedCourseList(),
            ],
          ),
        ),
      ),
    );
  }
}
