import 'dart:typed_data';

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
    return BlocBuilder<CourseSyllabusItemCubit, CourseSyllabusItemState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final pdf = state.pdf as Uint8List;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: smallItemSpacing),
            SlidePreviewList(pdf: pdf, item: state.item),
          ],
        );
      },
    );
  }
}
