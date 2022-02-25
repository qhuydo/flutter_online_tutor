import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                UserSettingsCard(),
                SizedBox(height: 16),
                AppSettingsCard(),
                SizedBox(height: 16),
                InfoCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
