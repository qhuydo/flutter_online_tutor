import '../../common.dart';

class OutlinedCard extends Card {
  OutlinedCard({
    Key? key,
    Color? color,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    borderOnForeground = true,
    EdgeInsets? margin,
    Clip? clipBehavior,
    Widget? child,
    semanticContainer = true,
  }) : super(
          key: key,
          color: color,
          shadowColor: shadowColor,
          elevation: elevation ?? 0,
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
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
