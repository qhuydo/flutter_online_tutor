import 'package:flutter/material.dart';

abstract class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  String getText(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        getText(context),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}
