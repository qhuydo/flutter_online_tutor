import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/loading_widget.dart';
import '../../course_ebook/course_list/widgets/course_list_card.dart';

class RecommendedCourses extends StatefulWidget {
  const RecommendedCourses({Key? key}) : super(key: key);

  @override
  State<RecommendedCourses> createState() => RecommendedCoursesState();
}

class RecommendedCoursesState extends State<RecommendedCourses> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseListBloc, CourseListState>(
      builder: (context, state) {
        final list = state.recommendedCourseList;

        if (list == null) {
          // TODO add error widget
          return SizedBox(
            height: 60,
            child: Center(child: Text(context.l10n.valueFailureUnknownError)),
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
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
            Scrollbar(
              controller: scrollController,
              showTrackOnHover: true,
              interactive: true,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse
                  },
                ),
                child: LimitedBox(
                  maxHeight: 400 + itemSpacing * 2,
                  child: state.isLoading
                      ? const LoadingWidget()
                      : ListView.builder(
                          padding: const EdgeInsets.symmetric(
                            horizontal: itemSpacing,
                          ),
                          controller: scrollController,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return LimitedBox(
                              maxWidth: 300 + itemSpacing + smallItemSpacing,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: smallItemSpacing,
                                  bottom: itemSpacing,
                                ),
                                child: CourseListCard(
                                  course: list[index],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
