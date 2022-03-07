import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const MessageRow();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8,);
      },
      itemCount: 5,
    );
  }
}
