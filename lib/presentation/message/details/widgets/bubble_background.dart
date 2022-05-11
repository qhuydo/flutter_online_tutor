import 'dart:ui' as ui;

import 'package:collection/collection.dart';

import '../../../../application/common/platform/platform_delegate.dart';
import '../../../common.dart';

@immutable
class BubbleBackground extends StatelessWidget {
  final Widget child;
  final List<Color> colours;

  const BubbleBackground({
    Key? key,
    required this.child,
    required this.colours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Target().isWeb
        ? Container(
            decoration: BoxDecoration(
              color: colours.firstOrNull ?? Colors.transparent,
            ),
            child: child,
          )
        : CustomPaint(
            painter: BubblePainter(
              colours: colours,
              bubbleContext: context,
              scrollable: Scrollable.of(context)!,
            ),
            child: child,
          );
  }
}

class BubblePainter extends CustomPainter {
  final List<Color> _colours;
  final ScrollableState _scrollable;
  final BuildContext _bubbleContext;

  BubblePainter({
    required List<Color> colours,
    required ScrollableState scrollable,
    required BuildContext bubbleContext,
  })  : _colours = colours,
        _bubbleContext = bubbleContext,
        _scrollable = scrollable,
        super(repaint: scrollable.position);

  @override
  void paint(Canvas canvas, Size size) {
    final scrollableBox = _scrollable.context.findRenderObject() as RenderBox;
    final scrollableRect = Offset.zero & scrollableBox.size;
    final bubbleBox = _bubbleContext.findRenderObject() as RenderBox;

    final origin = bubbleBox.localToGlobal(
      Offset.zero,
      ancestor: scrollableBox,
    );

    // dev.log('$origin');

    final paint = Paint()
      ..shader = ui.Gradient.linear(
        scrollableRect.topCenter,
        scrollableRect.bottomCenter,
        _colours,
        [0.0, 1.0],
        TileMode.clamp,
        Matrix4.translationValues(-origin.dx, -origin.dy, 0.0).storage,
      );
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant BubblePainter oldDelegate) {
    return oldDelegate._scrollable != _scrollable ||
        oldDelegate._bubbleContext != _bubbleContext ||
        oldDelegate._colours != _colours;
  }
}
