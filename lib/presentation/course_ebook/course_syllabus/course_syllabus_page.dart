import '../../../domain/course_ebook/models/course_topic.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class CourseSyllabusPage extends StatelessWidget {
  final CourseTopic item;

  const CourseSyllabusPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: item.name),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(smallItemSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LessonSlides(item: item),
            const SizedBox(height: itemSpacing),
            const ReviewVideo(),
          ],
        ),
      ),
    );
  }
}
