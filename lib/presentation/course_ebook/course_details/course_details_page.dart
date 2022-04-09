import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_details/course_details_bloc.dart';
import '../../common.dart';
import 'widgets/course_details_body.dart';
import 'widgets/course_details_body_desktop.dart';

class CourseDetailsPage extends StatelessWidget {
  final String courseId;
  final String? thumbnail;

  const CourseDetailsPage({
    Key? key,
    required this.courseId,
    this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);

    return BlocProvider(
      create: (_) => getIt<CourseDetailsBloc>()
        ..add(CourseDetailsEvent.initialise(courseId)),
      child: breakpoint.window >= WindowSize.medium
          ? const CourseDetailsBodyDesktop()
          : const CourseDetailsBody(),
    );
  }
}
