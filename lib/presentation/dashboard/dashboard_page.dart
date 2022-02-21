import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            DashboardCard(),
            SizedBox(height: 16),
            RecommendedTutors(),
          ],
        ),
      ),
    );
  }
}
