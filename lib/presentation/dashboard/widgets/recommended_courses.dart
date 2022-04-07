import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/constants.dart';
import '../../course_ebook/course_list/widgets/course_carousel.dart';
import '../../course_ebook/course_list/widgets/course_list_card.dart';

class RecommendedCourses extends StatelessWidget {
  const RecommendedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return getIt<CourseListBloc>()..add(const CourseListEvent.initialise());
      },
      child: const _RecommendedCourses(),
    );
  }
}

class _RecommendedCourses extends StatefulWidget {
  const _RecommendedCourses({Key? key}) : super(key: key);

  @override
  State<_RecommendedCourses> createState() => _RecommendedCoursesState();
}

class _RecommendedCoursesState extends State<_RecommendedCourses> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop =
        Platform.isLinux || Platform.isMacOS || Platform.isWindows;
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final list = state.courseList;

        if (list == null) {
          // TODO add error widget
          return SizedBox(
            height: 60,
            child: Center(child: Text(context.l10n.valueFalureUnknownError)),
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(smallItemSpacing),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.spaceBetween,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    // Twemoji(emoji: '🌟'),
                    Text(
                      '📕 ' + context.l10n.recommendedCourses,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                      textAlign: TextAlign.start,
                    ),
                    TextButton(
                      onPressed: () {
                        context.navigateTo(const CourseRoute());
                      },
                      child: Wrap(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            context.l10n.seeMoreButtonText,
                          ),
                          const SizedBox(width: 4),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                return width < 200
                    ? CourseCarousel(courses: list)
                    : LimitedBox(
                        maxHeight: 400,
                        child: Scrollbar(
                          thickness: isDesktop ? null : 0,
                          isAlwaysShown: true,
                          controller: scrollController,
                          child: ListView.builder(
                            controller: scrollController,
                            padding: const EdgeInsets.only(
                              top: smallItemSpacing,
                              bottom: itemSpacing,
                            ),
                            // primary: true,
                            scrollDirection: Axis.horizontal,
                            // shrinkWrap: true,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return LimitedBox(
                                maxWidth: 300,
                                child: CourseListCard(
                                  course: list[index],
                                ),
                              );
                            },
                          ),
                        ),
                      );
              },
            ),
          ],
        );
      },
    );
  }
}
