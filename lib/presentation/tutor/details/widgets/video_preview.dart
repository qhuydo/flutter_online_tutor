import 'package:flutter/material.dart';

import '../../../../application/common/platform/platform_delegate.dart';
import 'video_preview_desktop.dart';
import 'video_preview_mobile.dart';

class VideoPreview extends StatelessWidget {
  final String videoUrl;
  final int id;

  const VideoPreview({
    Key? key,
    required this.videoUrl,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = Target().isDesktop;
    return isDesktop
        ? VideoPreviewDesktop(videoUrl: videoUrl, id: id)
        : VideoPreviewMobile(videoUrl: videoUrl);
  }
}
