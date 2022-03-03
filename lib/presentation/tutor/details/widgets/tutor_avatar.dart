import 'package:flutter/material.dart';

class TutorAvatar extends StatelessWidget {
  const TutorAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              minRadius: 40,
              maxRadius: 60,
            ),
          ),
        ],
      ),
    );
  }
}
