import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        left: false,
        child: ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const MessageRow();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8,);
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
