import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../domain/user/models/speciality.dart';
import '../../../common/utils/constants.dart';
import 'speciality_chip.dart';

class SpecialitiesFilterRow extends StatelessWidget {
  final List<Speciality> specialities;
  final List<Speciality> selectedSpecialities;
  final ValueChanged<List<Speciality>>? onSelectionChanged;

  const SpecialitiesFilterRow({
    Key? key,
    required this.specialities,
    required this.selectedSpecialities,
    this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
      ),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SpecialityChip(
            label: specialities[index].name,
            isSelected: selectedSpecialities.contains(specialities[index]),
            onSelected: (value) {
              if (value) {
                onSelectionChanged?.call(
                  selectedSpecialities.toList()..add(specialities[index]),
                );
              } else {
                onSelectionChanged?.call(
                  selectedSpecialities.toList()..remove(specialities[index]),
                );
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: smallItemSpacing);
        },
        itemCount: specialities.length,
      ),
    );
  }
}
