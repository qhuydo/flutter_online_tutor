import 'package:flutter/material.dart';

abstract class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key,}) : super(key: key);

  void onPressed(BuildContext context);

  String getText(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(context),
      child: Text(
        getText(context),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}
