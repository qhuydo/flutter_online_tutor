import 'package:flutter/material.dart';

class TutorAvatar extends StatelessWidget {
  const TutorAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              minRadius: 40,
              maxRadius: 60,
              onBackgroundImageError: (exception, stackTrace) {},
            ),
          ),
        ],
      ),
    );
  }
}
