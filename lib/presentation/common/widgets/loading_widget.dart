import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(itemSpacing),
      child: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}
