import 'package:flutter/material.dart';

import '../../list/widgets/topic_chip.dart';

class SpecialityList extends StatelessWidget {
  const SpecialityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final topics = context.read<Tutor>().specialities;

    return Wrap(
      spacing: 8,
      children: [
        for (final topic in ['English'])
          TopicChip(label: topic),
      ],
    );
  }
}
