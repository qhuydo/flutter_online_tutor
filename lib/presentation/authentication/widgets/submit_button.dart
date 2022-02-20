import 'package:flutter/material.dart';

abstract class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key, required this.text}) : super(key: key);

  void onPressed(BuildContext context);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(context),
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}
