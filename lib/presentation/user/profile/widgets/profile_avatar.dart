import 'dart:math';
import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/user/profile/profile_bloc.dart';
import '../../../common.dart';

class ProfileAvatar extends StatelessWidget {
  final double? avatarRadius;

  const ProfileAvatar({
    Key? key,
    this.avatarRadius,
  }) : super(key: key);

  static const foregroundColorOpacity = 0.8;

  double avatarRadiusFromConstraints(BoxConstraints constraints) => min(
          max(constraints.hasBoundedWidth ? constraints.maxWidth / 2.5 : 0, 60),
          160)
      .toDouble();

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
              buildProfileImage(),
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
                    onPressed: () async {
                      final result = await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['jpg', 'jpeg', 'png'],
                        withReadStream: true,
                      );

                      if (result != null) {
                        final XFile file;
                        if (result.files.single.bytes != null) {
                          file = XFile.fromData(
                            result.files.single.bytes!,
                            name: result.files.single.name,
                          );
                        } else {
                          file = XFile(
                            result.files.single.path!,
                            name: result.files.single.name,
                          );
                        }

                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.newProfileImageSelected(file));
                      }
                    },
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

  Widget buildProfileImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        buildWhen: (previous, current) =>
            previous.user.avatar != current.user.avatar ||
            previous.selectedProfileImage != current.selectedProfileImage,
        builder: (context, state) {
          final avatar = state.user.avatar;
          return LayoutBuilder(
            builder: (_, constraints) {
              if (state.selectedProfileImage != null) {
                return FutureBuilder(
                  future: state.selectedProfileImage!.readAsBytes(),
                  builder: (_, snapshot) {
                    if (snapshot.hasError || !snapshot.hasData) {
                      return buildCircleAvatar(
                          constraints, NetworkImage(avatar ?? ''));
                    }
                    return buildCircleAvatar(
                      constraints,
                      snapshot.data != null
                          ? MemoryImage(snapshot.data as Uint8List)
                          : null,
                    );
                  },
                );
              }
              return buildCircleAvatar(constraints, NetworkImage(avatar ?? ''));
            },
          );
        },
      ),
    );
  }

  Widget buildCircleAvatar(
    BoxConstraints constraints,
    ImageProvider? backgroundImage,
  ) =>
      CircleAvatar(
        onBackgroundImageError: (exception, stackTrace) {},
        radius: avatarRadius ?? avatarRadiusFromConstraints(constraints),
        backgroundImage: backgroundImage,
      );
}
