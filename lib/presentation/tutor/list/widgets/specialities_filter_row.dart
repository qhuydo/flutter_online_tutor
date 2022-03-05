import 'package:flutter/material.dart';

import 'speciality_chip.dart';

class SpecialitiesFilterRow extends StatelessWidget {
  const SpecialitiesFilterRow({Key? key}) : super(key: key);
  
  static final _specialities = [
    'English for business',
    'English for kids',
    'Conversational English',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SpecialityChip(label: _specialities[index],);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 8);
      },
      itemCount: _specialities.length,
    );
  }
}
