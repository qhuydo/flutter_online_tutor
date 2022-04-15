import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/course_ebook/course_details/course_details_bloc.dart';
import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../../common/utils/image_utils.dart';
import '../../../common/widgets/empty_page.dart';
import '../../../common/widgets/outlined_card.dart';
import 'course_details_content.dart';
import 'syllabus.dart';

class CourseDetailsBodyDesktop extends StatelessWidget {
  const CourseDetailsBodyDesktop({Key? key}) : super(key: key);

  // TODO refactor into a widget
  Widget _buildNotFoundWidget(BuildContext context) {
    return EmptyPage(text: context.l10n.pageNotFound);
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(itemSpacing),
        child: LinearProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, title: context.l10n.courseTitle),
      body: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final course = state.course;
          if (course == null) return _buildNotFoundWidget(context);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: buildDesktopCard(course, context),
              ),
              const SizedBox(width: smallItemSpacing),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CourseDetailsContent(course: course),
                        const SizedBox(height: smallItemSpacing),
                        Syllabus(syllabus: course.courseTopic),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  SingleChildScrollView buildDesktopCard(Course course, BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.only(
        start: smallItemSpacing,
        top: itemSpacing,
      ),
      child: SafeArea(
        child: Center(
          child: OutlinedCard(
            childInsideInkwell: false,
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: smallItemSpacing),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      course.imageUrl,
                      fit: BoxFit.fitHeight,
                      errorBuilder: getDefaultImageErrorBuilder,
                      loadingBuilder: getDefaultImageLoadingBuilder,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(smallItemSpacing),
                      child: Text(
                        course.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(itemSpacing),
                      child: Text(
                        course.description,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
