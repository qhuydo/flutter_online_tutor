import 'package:flutter/material.dart';

import '../../common.dart';
import 'topic_chip.dart';

class TopicList extends StatelessWidget {
  const TopicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: const [
            TopicChip(),
            TopicChip(),
            TopicChip(),
            TopicChip(),
          ],
        ),
      ],
    );
  }
}
