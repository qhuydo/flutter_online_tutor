import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_details/course_details_bloc.dart';
import '../../../domain/course_ebook/models/course.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/empty_page.dart';
import '../utils/constants.dart';
import 'widgets/widgets.dart';

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
    return BlocProvider(
      create: (_) => getIt<CourseDetailsBloc>()
        ..add(CourseDetailsEvent.initialise(courseId)),
      child: const _CourseDetailsPage(),
    );
  }
}

class _CourseDetailsPage extends StatelessWidget {
  const _CourseDetailsPage({Key? key}) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context, Course course) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Image.network(
        course.imageUrl,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  // TODO refactor into a widget
  Widget _buildNotFoundWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.courseTitle,
      ),
      body: EmptyPage(text: context.l10n.pageNotFound),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.courseTitle,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(itemSpacing),
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final course = state.course;
          if (course == null) return _buildNotFoundWidget(context);

          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                title: Text(context.l10n.courseTitle),
                elevation: 0.75,
                shadowColor: Colors.grey[500]?.withOpacity(0.5),
                centerTitle: true,
                floating: true,
                stretch: true,
                expandedHeight: MediaQuery.of(context).size.width *
                    courseThumbnailRatioInverse,
                flexibleSpace: _buildFlexibleSpaceBar(context, course),
              ),
              SliverToBoxAdapter(
                child: SafeArea(
                  top: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: itemSpacing),
                      CourseDetailsHeader(course: course),
                      // SizedBox(height: 16),
                      CourseDetailsContent(course: course),
                      const SizedBox(height: smallItemSpacing),
                      Syllabus(syllabus: course.courseTopic),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
