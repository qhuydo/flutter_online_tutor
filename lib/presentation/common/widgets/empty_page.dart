import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class EmptyPage extends StatelessWidget {
  final String? emoticon;
  final String? text;

  const EmptyPage({
    Key? key,
    this.emoticon,
    this.text,
  }) : super(key: key);

  static const emoticons = [
    '(◕‿◕)',
    '٩(◕‿◕)۶',
    '(◕‿◕)',
    '(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧',
    '◉‿◉',
    '(づ ◕‿◕ )づ',
    '( ꈍᴗꈍ)',
    '(◕‿◕✿)',
    '(◍•ᴗ•◍)',
    '(◍•ᴗ•◍)❤',
    '(づ￣ ³￣)づ',
    '(つ✧ω✧)つ',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              emoticon ?? emoticons[Random().nextInt(emoticons.length)],
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(height: smallItemSpacing),
          Text(text ?? '')
        ],
      ),
    );
  }
}
