import 'package:flutter/material.dart';

class MeetingButtonRow extends StatelessWidget {
  const MeetingButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic_off),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.no_photography),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.switch_camera),
          ),
          IconButton(
            color: Colors.red,
            onPressed: () {},
            icon: const Icon(
              Icons.call_end,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
