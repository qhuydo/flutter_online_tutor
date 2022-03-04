import '../../common.dart';
import '../../utils/default_app_bar.dart';

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
        title: 'Demo',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
