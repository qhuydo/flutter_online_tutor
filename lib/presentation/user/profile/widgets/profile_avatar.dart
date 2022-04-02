import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/user/profile/profile_bloc.dart';
import '../../../common.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  static const foregroundColorOpacity = 0.8;

  @override
  Widget build(BuildContext context) {
    final isLightTheme =
        Theme.of(context).colorScheme.brightness == Brightness.light;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: BlocBuilder<ProfileBloc, ProfileState>(
                  buildWhen: (previous, current) =>
                      previous.user.avatar != current.user.avatar,
                  builder: (context, state) {
                    final avatar = state.user.avatar;
                    return CircleAvatar(
                      minRadius: 40,
                      maxRadius: 60,
                      backgroundImage:
                          avatar == null ? null : NetworkImage(avatar),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: isLightTheme
                        ? Colors.grey[100]?.withOpacity(0.8)
                        : Colors.grey[100]?.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.photo_camera,
                    ),
                    onPressed: () {},
                    tooltip: context.l10n.changeAvatarButtonTooltip,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        BlocBuilder<ProfileBloc, ProfileState>(
          buildWhen: (previous, current) => previous.user != current.user,
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  state.name.valueOrNull() ?? '',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  state.user.emailAddress.valueOrNull() ?? '',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
