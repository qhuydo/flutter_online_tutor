import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/course_ebook/course_syllabus/course_syllabus_item_cubit.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../helpers/helpers.dart';
import 'slide_preview_list.dart';

class LessonSlides extends StatelessWidget {
  const LessonSlides({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: smallItemSpacing,
            left: smallItemSpacing,
            right: smallItemSpacing,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.syllabusLessonSlideTitle,
                style: getTitleTextStyle(context),
              ),
              const SizedBox(height: smallItemSpacing),
              Text(
                context.l10n.syllabusLessonSlideSubtitle,
                style: getSubTitleTextStyle(context),
              ),
            ],
          ),
        ),
        BlocBuilder<CourseSyllabusItemCubit, CourseSyllabusItemState>(
          builder: (_, state) {
            return Container(
              child: state.isLoading
                  ? const SizedBox(
                      height: 200,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SlidePreviewList(pdf: state.pdf, item: state.item),
            );
          },
        ),
      ],
    );
  }
}
