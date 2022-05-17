import '../../common.dart';

class AppIcon extends StatelessWidget {
  final double size;

  const AppIcon({
    Key? key,
    this.size = 160,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[700]!.withOpacity(0.6),
          width: 1.25,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/icons/icon.png',
        ),
      ),
    );
  }
}
