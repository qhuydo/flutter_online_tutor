import 'package:flutter/material.dart';

import 'speciality_chip.dart';

class SpecialitiesFilterRow extends StatelessWidget {
  const SpecialitiesFilterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SpecialityChip();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 8);
      },
      itemCount: 10,
    );
  }
}
