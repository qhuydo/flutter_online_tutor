import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import 'topic_chip.dart';

class TopicList extends StatelessWidget {
  const TopicList({Key? key,}) : super(key: key);

  Widget buildListAtLinuxPlatform(BuildContext context) {
    final topics = context.watch<Tutor>().specialities;
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        for (final topic in topics)
          TopicChip(label: topic.name),
      ],
    );
  }

  Widget buildList(BuildContext context) {
    final topics = context.watch<Tutor>().specialities;

    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ListView.separated(
        // primary: false,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (BuildContext context, int index) {
          return TopicChip(label: topics[index].name);
        },
        itemCount: topics.length,
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
