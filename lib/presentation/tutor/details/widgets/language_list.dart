import 'package:flutter/material.dart';

import '../../../../domain/tutor/models/language.dart';
import '../../../common/utils/constants.dart';

class LanguageList extends StatelessWidget {
  final List<Language> languages;

  const LanguageList({
    Key? key,
    required this.languages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: smallItemSpacing,
      runSpacing: smallItemSpacing,
      children: [
        for (final language in languages)
          Chip(
            label: Text('${language.name} (${language.native})'),
          ),
      ],
    );
  }
}
