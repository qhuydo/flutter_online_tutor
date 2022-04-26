import '../../../domain/tutor/models/tutor.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class TutorReviewPage extends StatelessWidget {
  final String tutorId;
  final Tutor tutor;

  const TutorReviewPage({
    Key? key,
    required this.tutorId,
    required this.tutor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.viewReviewButtonText,
      ),
      body: ReviewList(feedbackList: tutor.feedbacks),
    );
  }
}
