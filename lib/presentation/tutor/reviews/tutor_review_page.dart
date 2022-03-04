import '../../common.dart';

import '../../utils/default_app_bar.dart';

class TutorReviewPage extends StatelessWidget {
  final String tutorId;

  const TutorReviewPage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.viewReviewButtonText,
      ),
    );
  }
}
