import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final Widget? child;

  const InfoContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColour = Theme
        .of(context)
        .primaryColorLight;

    final onBackgroundColour = ThemeData.estimateBrightnessForColor(
        backgroundColour) == Brightness.light ? Colors.black : Colors.white;

    return DefaultTextStyle.merge(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme
                .of(context)
                .primaryColorDark,
            width: 1.25,
          ),
          borderRadius: BorderRadius.circular(8),
          color: backgroundColour,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
      style: TextStyle(
          color: onBackgroundColour,
      ),
    );
  }
}
