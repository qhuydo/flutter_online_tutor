import 'package:flutter/material.dart';

abstract class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    this.onPressed,
    this.isDisabled = false,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final bool isDisabled;

  String getText(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      child: Text(
        getText(context),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}
