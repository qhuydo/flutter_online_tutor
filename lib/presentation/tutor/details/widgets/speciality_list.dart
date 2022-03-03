import 'package:flutter/material.dart';

import '../../list/widgets/topic_chip.dart';

class SpecialityList extends StatelessWidget {
  const SpecialityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: const [
        TopicChip(),
        TopicChip(),
      ],
    );
  }
}
