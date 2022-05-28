import 'package:flutter/material.dart';

import 'edit_profile_form.dart';
import 'profile_avatar.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints.loose(const Size(800, double.infinity)),
        child: Column(
          children: const [
            ProfileAvatar(avatarRadius: 60),
            SizedBox(height: 16),
            EditProfileForm(),
          ],
        ),
      ),
    );
  }
}
