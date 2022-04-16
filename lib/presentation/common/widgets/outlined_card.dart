import '../../common.dart';

class OutlinedCard extends StatefulWidget {
  final Color? color;
  final Color? shadowColor;
  final double? elevation;
  final ShapeBorder? shape;
  final bool borderOnForeground;
  final EdgeInsets? margin;
  final Clip? clipBehavior;
  final Widget? child;
  final bool semanticContainer;
  final VoidCallback? onTap;
  final bool useOnTappedCallback;
  final bool childInsideInkwell;
  final ValueChanged<bool>? onCardHovered;

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
    this.onTap,
    this.useOnTappedCallback = true,
    this.childInsideInkwell = true,
    this.onCardHovered,
  }) : super(key: key);

  @override
  State<OutlinedCard> createState() => _OutlinedCardState();
}

class _OutlinedCardState extends State<OutlinedCard> {
  bool isHovered = false;

  Widget buildInkWell() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        onHover: (value) {
          setState(() {
            isHovered = value;
          });
          widget.onCardHovered?.call(value);
        },
        onHighlightChanged: (value) {
          setState(() {
            isHovered = value;
          });
          widget.onCardHovered?.call(value);
        },
        child: widget.childInsideInkwell ? widget.child! : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primaryColour = Theme.of(context).primaryColor;
    final secondaryColour = Theme.of(context).colorScheme.secondary;
    final unHoveredColour = primaryColour.withOpacity(0.25);
    // final hoveredColour = primaryColour;
    const borderRadius = 12.0;
    final decoration = BoxDecoration(
      gradient: isHovered
          ? LinearGradient(
              colors: [primaryColour, secondaryColour],
            )
          : null,
      color: isHovered ? null : unHoveredColour,
      borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
    );
    const borderMaxWidth = 2.25;
    const borderMinWidth = 1.25;
    const defaultInset = 4.0;

    return Padding(
      padding: widget.margin ??
          EdgeInsets.all(
            isHovered
                ? defaultInset - (borderMaxWidth - borderMinWidth)
                : defaultInset,
          ),
      child: Material(
        elevation: isHovered ? 4 : 0,
        borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
        child: Container(
          // margin: const EdgeInsets.all(0),
          padding: EdgeInsets.all(isHovered ? borderMaxWidth : borderMinWidth),
          decoration: decoration,
          child: Card(
            key: widget.key,
            color: widget.color,
            shadowColor: widget.shadowColor,
            elevation: 0,
            shape: widget.shape ??
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius - 2),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
            borderOnForeground: widget.borderOnForeground,
            clipBehavior: widget.clipBehavior,
            margin: EdgeInsets.zero,
            child: widget.childInsideInkwell
                ? buildInkWell()
                : Stack(
                    children: widget.child != null
                        ? [
                            widget.child!,
                            if (widget.useOnTappedCallback)
                              Positioned.fill(child: buildInkWell()),
                          ]
                        : [],
                  ),
            semanticContainer: widget.semanticContainer,
          ),
        ),
      ),
    );
  }
}
