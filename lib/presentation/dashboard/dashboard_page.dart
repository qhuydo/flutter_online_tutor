import 'package:flutter/material.dart';

import '../common/utils/constants.dart';
import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Padding(
            padding: EdgeInsets.all(smallItemSpacing),
            child: DashboardCard(),
          ),
          SizedBox(height: smallItemSpacing),
          RecommendedCourses(),
          SizedBox(height: itemSpacing),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: smallItemSpacing),
            child: RecommendedTutors(),
          ),
        ],
      ),
    );
  }
}
