import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/social_icon.dart';

class LoginOptionButtonGroup extends StatelessWidget {
  final bool hasFacebookOption;
  final bool hasGoogleOption;
  final bool hasPhoneOption;
  final bool hasMailOption;

  const LoginOptionButtonGroup(
      {Key? key, this.hasFacebookOption = true,
      this.hasGoogleOption = true,
      this.hasPhoneOption = true,
      this.hasMailOption = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (hasFacebookOption) SocialIcon(
            icon: const Left('assets/icons/fb.svg'),
            onPressed: () {},
          ),
          if (hasGoogleOption) SocialIcon(
            icon: const Left('assets/icons/google.svg'),
            onPressed: () {},
          ),
          if (hasPhoneOption) SocialIcon(
            icon: const Left('assets/icons/phone.svg'),
            onPressed: () {},
          ),
          if (hasMailOption)  SocialIcon(
            icon: const Right(Icon(Icons.email_outlined, size: 32,)),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
