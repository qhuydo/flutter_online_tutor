import 'package:flutter/material.dart';

import '../../../../domain/user/models/speciality.dart';
import 'speciality_chip.dart';

class SpecialitiesFilterRow extends StatelessWidget {
  final List<Speciality> specialities;

  const SpecialitiesFilterRow({
    Key? key,
    required this.specialities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SpecialityChip(
          label: specialities[index].name,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 8);
      },
      itemCount: specialities.length,
    );
  }
}
