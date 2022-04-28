import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PaginatorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isSelected;
  final OutlinedBorder? shape;
  final Widget child;
  final double size;

  const PaginatorButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.isSelected = false,
    this.size = 48,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: size,
      height: size,
      child: AspectRatio(
        aspectRatio: 1,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(smallItemSpacing / 2),
            child: FittedBox(
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  shape: shape ?? const CircleBorder(),
                  primary: isSelected
                      ? colourScheme.onSecondary
                      : colourScheme.onBackground,
                  backgroundColor: isSelected
                      ? colourScheme.secondary
                      : colourScheme.background,
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
