import 'package:flutter/material.dart';

import 'widgets/app_settings_card.dart';
import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              UserSettingsCard(),
              const SizedBox(height: 16),
              AppSettingsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
