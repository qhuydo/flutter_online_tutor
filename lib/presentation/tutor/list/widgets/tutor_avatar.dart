
import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';

class TutorAvatar extends StatelessWidget {
  final Tutor? tutor;

  const TutorAvatar({
    Key? key,
    this.tutor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = tutor?.avatar;
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: avatar == null ? Colors.grey.withOpacity(0.2) : null,
          radius: 32,
          // child: SvgPicture.asset(
          //   'assets/icons/phone.svg',
          //   width: 40,
          //   height: 40,
          // ),
          // child: Icon(
          //   Icons.person,
          //   size: 40,
          //   color: Theme.of(context).colorScheme.onSurface,
          // ),
          backgroundImage: avatar != null ? NetworkImage(avatar) : null,
        ),
        if (tutor?.isOnline == true)
          Positioned(
            bottom: 2,
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
      ],
    );
  }
}
