import 'package:flutter/material.dart';
import 'package:twemoji/twemoji.dart';

import '../../../common/utils/string_utils.dart';

class LanguageList extends StatelessWidget {
  const LanguageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        Chip(
          label: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4,
            children: [
              Twemoji(emoji: 'VN'.toCountryFlagFromCountryCode()),
              const Text('Vietnamese'),
            ],
          ),
        ),
        Chip(
          label: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4,
            children: [
              Twemoji(emoji: 'UA'.toCountryFlagFromCountryCode()),
              const Text('Ukrainian'),
            ],
          ),
        ),
      ],
    );
  }
}
