import 'dart:io';

import 'package:flutter/material.dart';

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
    final isDesktop =
        Platform.isLinux || Platform.isMacOS || Platform.isWindows;
    return isDesktop
        ? VideoPreviewDesktop(videoUrl: videoUrl, id: id)
        : VideoPreviewMobile(videoUrl: videoUrl);
  }
}
