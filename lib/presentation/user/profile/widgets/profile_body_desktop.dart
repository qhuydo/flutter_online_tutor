import 'package:flutter/material.dart';

import '../../../common/utils/constants.dart';
import 'edit_profile_form.dart';
import 'profile_avatar.dart';

class ProfileBodyDesktop extends StatelessWidget {
  const ProfileBodyDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(itemSpacing),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(flex: 1, child: ProfileAvatar()),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: Column(
                  children: const [
                    EditProfileForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
