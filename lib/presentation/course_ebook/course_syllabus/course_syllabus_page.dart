import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_syllabus/course_syllabus_item_cubit.dart';
import '../../../domain/course_ebook/interfaces/i_course_repository.dart';
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
            BlocProvider(
              create: (_) => CourseSyllabusItemCubit(
                getIt<CourseRepository>(),
                item: item,
              ),
              child: const LessonSlides(),
            ),
            const SizedBox(height: itemSpacing),
            const ReviewVideo(),
          ],
        ),
      ),
    );
  }
}
