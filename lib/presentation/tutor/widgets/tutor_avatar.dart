import '../../common.dart';

class TutorAvatar extends StatelessWidget {
  final bool shouldShowStatus;

  const TutorAvatar({Key? key, this.shouldShowStatus = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        radius: 32,
        // child: SvgPicture.asset(
        //   'assets/icons/phone.svg',
        //   width: 40,
        //   height: 40,
        // ),
        child: Icon(
          Icons.person,
          size: 40,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      if (shouldShowStatus) Positioned(
        bottom: 4,
        right: 4,
        child: Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
      )
    ]);
  }
}
