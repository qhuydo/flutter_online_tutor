import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              DashboardCard(),
              SizedBox(height: 16),
              RecommendedCourses(),
              SizedBox(height: 16),
              RecommendedTutors(),
            ],
          ),
        ),
      ),
    );
  }
}
