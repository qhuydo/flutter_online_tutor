import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPreview extends StatefulWidget {
  final String videoUrl;

  const VideoPreview({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid || Platform.isIOS || kIsWeb) {
      initializePlayer();
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (Platform.isAndroid || Platform.isIOS || kIsWeb) {
      _videoPlayerController.dispose();
      _chewieController?.dispose();
    }
  }

  Future<void> initializePlayer() async {
    // log('video ${widget.videoUrl}');
    if (widget.videoUrl.isEmpty) return;

    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);

    await Future.wait([
      _videoPlayerController.initialize(),
    ]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: false,
      hideControlsTimer: const Duration(seconds: 1),
      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: _chewieController != null &&
              _chewieController!.videoPlayerController.value.isInitialized
          ? SizedBox(
              height: 300,
              child: Chewie(controller: _chewieController!),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[400]?.withOpacity(0.2),
              ),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const Icon(
                Icons.play_circle_filled,
                size: 69,
              ),
            ),
    );
  }
}
