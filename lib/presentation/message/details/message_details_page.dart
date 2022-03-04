import 'package:flutter/material.dart';

import '../../utils/default_app_bar.dart';

class MessageDetailsPage extends StatelessWidget {
  final String tutorId;

  const MessageDetailsPage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Message',
      ),
    );
  }
}
