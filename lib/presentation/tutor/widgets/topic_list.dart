import 'dart:io';

import 'package:flutter/material.dart';

import '../../common.dart';
import 'topic_chip.dart';

class TopicList extends StatelessWidget {
  const TopicList({Key? key}) : super(key: key);

  Widget buildListAtLinuxPlatform(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: const [
        TopicChip(),
        TopicChip(),
        TopicChip(),
        TopicChip(),
      ],
    );
  }

  Widget buildList(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Theme.of(context).cardColor,
              Colors.transparent,
              Colors.transparent,
              Theme.of(context).cardColor,
            ],
            stops: const [
              0.0,
              0.0,
              0.9,
              1.0,
            ],
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: ListView.separated(
          // primary: false,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          },
          itemBuilder: (BuildContext context, int index) {
            return const TopicChip();
          },
          itemCount: 4,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isLinux
        ? buildListAtLinuxPlatform(context)
        : buildList(context);
  }
}
