import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart';

import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../helpers/helpers.dart';
import 'slide_preview_list.dart';

class LessonSlides extends StatelessWidget {
  const LessonSlides({Key? key}) : super(key: key);
  static const _assets = [
    'assets/pdf/preview.pdf',
    'assets/pdf/preview2.pdf',
  ];

  Future<Uint8List> init() async {
    final asset = _assets[Random().nextInt(_assets.length)];
    final bundle = await rootBundle.load(asset);
    return bundle.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: rootBundle.load('assets/pdf/preview.pdf'),
      future: init(),
      builder: (context, snapshot) {
        if (snapshot.hasError) return const SizedBox(width: 0, height: 0);
        if (!snapshot.hasData) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final pdf = snapshot.data as Uint8List;

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
            SlidePreviewList(pdf: pdf),
          ],
        );
      },
    );
  }
}
