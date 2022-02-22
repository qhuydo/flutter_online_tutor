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

  Widget buildList2(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            TopicChip(),
            TopicChip(),
            TopicChip(),
            TopicChip(),
          ],
        ),
      ),
      Positioned(
        // bottom: 0,
        // left: 0,
        right: 0,
        width: 20,
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: const [0.0, 1.0],
              colors: [
                Theme.of(context).cardColor.withOpacity(0.0),
                Theme.of(context).cardColor,
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildList(BuildContext context) {
    return SizedBox(
      height: 40,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isLinux
        ? buildListAtLinuxPlatform(context)
        : buildList(context);
  }
}
