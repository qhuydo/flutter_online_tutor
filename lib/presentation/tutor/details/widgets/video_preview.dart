import 'package:flutter/material.dart';

class VideoPreview extends StatelessWidget {

  const VideoPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: Container(
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
