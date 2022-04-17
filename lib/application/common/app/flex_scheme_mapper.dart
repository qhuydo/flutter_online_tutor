import 'dart:math';

import 'package:flex_color_scheme/flex_color_scheme.dart';

import '../../../domain/common/app/colour_scheme.dart';

extension ColourSchemeX on ColourScheme {
  String getName() => toString().split('.').last;

  FlexScheme toFlexScheme() {
    if (this == ColourScheme.random) {
      return (FlexScheme.values.toList()..remove(FlexScheme.custom))[
          Random().nextInt(FlexScheme.values.length - 1)];
    }
    final name = getName();
    return FlexScheme.values.firstWhere(
      (e) => e.getName() == name,
      orElse: () => FlexScheme.bahamaBlue,
    );
  }
}

extension FlexSchemeX on FlexScheme {
  String getName() => toString().split('.').last;

  ColourScheme toColourScheme() {
    final name = getName();
    return ColourScheme.values.firstWhere(
      (e) => e.getName() == name,
      orElse: () => ColourScheme.bahamaBlue,
    );
  }
}
