import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../tutor_schedule/widgets/tutor_schedule_body.dart';
import 'tutor_details_content.dart';
import 'tutor_details_header.dart';
import 'tutor_recommended_course_list.dart';
import 'video_preview.dart';

class TutorDetailsPageBodyDesktop extends StatelessWidget {
  const TutorDetailsPageBodyDesktop({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  final String tutorId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.tutorDetailsPageTitle,
      ),
      body: BlocBuilder<TutorDetailsBloc, TutorDetailsState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(itemSpacing),
                child: LinearProgressIndicator(),
              ),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(itemSpacing),
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(height: smallItemSpacing),
                            TutorDetailsHeader(showBookButton: false),
                            TutorDetailsContent(showVideo: false),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const VideoPreview(),
                            BlocProvider(
                              create: (_) => getIt<TutorScheduleBloc>()
                                ..add(TutorScheduleEvent.initialise(tutorId)),
                              child: const Flexible(
                                // maxHeight: 1000,
                                child: TutorScheduleBody(
                                  primary: false,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  wrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const TutorRecommendedCourseList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
