import 'package:flutter/material.dart';

import '../../../../domain/user/models/speciality.dart';
import '../../list/widgets/topic_chip.dart';

class SpecialityList extends StatelessWidget {
  final List<Speciality> specialities;

  const SpecialityList({
    Key? key,
    required this.specialities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final topics = context.read<Tutor>().specialities;

    return Wrap(
      spacing: 8,
      children: [
        for (final topic in specialities) TopicChip(label: topic.name),
      ],
    );
  }
}
