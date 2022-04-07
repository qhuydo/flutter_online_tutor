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
        onHover: (value) => setState(() {
          isHovered = value;
        }),
        onHighlightChanged: (value) => setState(() {
          isHovered = value;
        }),
        child: widget.childInsideInkwell ? widget.child! : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primaryColour = Theme.of(context).primaryColor;
    final unHoveredColour = primaryColour.withOpacity(0.25);
    final hoveredColour = primaryColour;

    return Card(
      key: widget.key,
      color: widget.color,
      shadowColor: widget.shadowColor,
      elevation: isHovered ? 3 : 0.5,
      shape: widget.shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: isHovered ? hoveredColour : unHoveredColour,
              width: isHovered ? 2 : 1.25,
            ),
          ),
      borderOnForeground: widget.borderOnForeground,
      margin: widget.margin,
      clipBehavior: widget.clipBehavior,
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
    );
  }
}
