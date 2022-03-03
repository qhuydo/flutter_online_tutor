import 'package:auto_route/auto_route.dart';

import '../common.dart';
import '../utils/default_app_bar.dart';

class TutorDetailsPage extends StatelessWidget {
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
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
