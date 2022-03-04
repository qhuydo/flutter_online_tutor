import '../../../utils/constants.dart';
import '../../common.dart';
import '../../utils/default_app_bar.dart';
import 'widgets/widgets.dart';

class CourseSyllabusPage extends StatelessWidget {
  final String courseId;
  final int chapterId;

  const CourseSyllabusPage({
    Key? key,
    required this.courseId,
    required this.chapterId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Foods you love',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(smallItemSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              PrepareSlides(),
              SizedBox(height: itemSpacing),
              LessonSlides(),
              SizedBox(height: itemSpacing),
              ReviewVideo(),
            ],
          ),
        ),
      ),
    );
  }
}
