import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import '../../../../domain/course_ebook/models/course_topic.dart';
import '../../../../infrastructure/common/utils/pair.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/outlined_card.dart';

typedef ImagePairList = List<Pair<ui.Image, Uint8List>>;

class SlidePreviewList extends StatefulWidget {
  final Uint8List? pdf;
  final CourseTopic item;

  const SlidePreviewList({
    Key? key,
    this.pdf,
    required this.item,
  }) : super(key: key);

  @override
  State<SlidePreviewList> createState() => _SlidePreviewListState();
}

class _SlidePreviewListState extends State<SlidePreviewList> {
  final _controller = ScrollController();

  Future<ImagePairList?> init() async {
    if (widget.pdf == null) return null;

    final images = <Pair<ui.Image, Uint8List>>[];
    await for (final page in Printing.raster(widget.pdf!, dpi: 32)) {
      final image = await page.toImage();
      // images.add(image);
      final buffer =
          (await image.toByteData(format: ui.ImageByteFormat.png))?.buffer;
      if (buffer != null) {
        images.add(Pair(image, Uint8List.view(buffer)));
      }
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(seconds: 1),
      child: FutureBuilder(
        future: init(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const SizedBox(height: 200);
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const SizedBox(height: 200);
          }

          final images = snapshot.data as ImagePairList;
          if (images.isEmpty) {
            return const SizedBox(height: 200);
          }
          final ratio = images[0].left.width / images[0].left.height;

          return ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: LimitedBox(
              maxHeight: ratio < 1 ? 400 : 200,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: itemSpacing),
                    child: OutlinedCard(
                      childInsideInkwell: false,
                      onTap: () => context.pushRoute(
                        CourseSyllabusPreviewRoute(
                          item: widget.item,
                          pdf: widget.pdf!,
                          initialPage: index + 1,
                        ),
                      ),
                      child: Image.memory(
                        images[index].right,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: smallItemSpacing,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
