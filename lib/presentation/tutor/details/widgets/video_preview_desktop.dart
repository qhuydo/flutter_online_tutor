import 'package:flutter/material.dart';

import '../../../../application/common/utils/video_player.dart';

class VideoPreviewDesktop extends StatefulWidget {
  final int id;
  final String videoUrl;

  const VideoPreviewDesktop({
    Key? key,
    required this.id,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<VideoPreviewDesktop> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreviewDesktop> {
  Player? _player;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    super.dispose();
    _player
      ?..stop()
      ..dispose();
  }

  void initializePlayer() {
    if (widget.videoUrl.isEmpty) return;

    _player = Player(id: widget.id);
    final media = Media.network(widget.videoUrl);
    _player?.open(media, autoStart: false);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: _player != null
          ? Video(
              height: 300,
              playlistLength: 1,
              player: _player,
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
