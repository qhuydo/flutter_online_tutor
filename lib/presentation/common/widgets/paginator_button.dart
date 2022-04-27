import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PaginatorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isSelected;
  final OutlinedBorder? shape;
  final Widget child;

  const PaginatorButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.isSelected = false,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(smallItemSpacing / 2),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: shape ?? const CircleBorder(),
          primary: isSelected
              ? colourScheme.onSecondary
              : colourScheme.onBackground,
          backgroundColor:
              isSelected ? colourScheme.secondary : colourScheme.background,
        ),
        child: child,
      ),
    );
  }
}
