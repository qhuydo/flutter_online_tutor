import '../../common.dart';

class OutlinedCard extends StatelessWidget {
  final Color? color;
  final Color? shadowColor;
  final double? elevation;
  final ShapeBorder? shape;
  final bool borderOnForeground;
  final EdgeInsets? margin;
  final Clip? clipBehavior;
  final Widget? child;
  final bool semanticContainer;

  const OutlinedCard({
    Key? key,
    this.color,
    this.shadowColor,
    this.elevation,
    this.shape,
    this.borderOnForeground = true,
    this.margin,
    this.clipBehavior,
    this.child,
    this.semanticContainer = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: key,
      color: color,
      shadowColor: shadowColor,
      elevation: elevation ?? 0.5,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.25),
              width: 1.25,
            ),
          ),
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
      semanticContainer: semanticContainer,
    );
  }
}
