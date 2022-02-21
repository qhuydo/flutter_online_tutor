import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(child: Divider()),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(text),
      ),
      const Expanded(child: Divider()),
    ]);
  }
}
