import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/common/app/app_cubit.dart';

class ScaffoldWithSurfaceColorAppBar extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;

  const ScaffoldWithSurfaceColorAppBar({
    Key? key,
    this.body,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) =>
          previous.themeMode != current.themeMode ||
          previous.colourScheme != current.colourScheme,
      builder: (context, state) {
        final isLight = Theme.of(context).brightness == Brightness.light;

        return Theme(
            data: isLight
                ? state.lightWithSurfaceColouredAppBar
                : state.darkWithSurfaceColouredAppBar,
            child: Scaffold(
              appBar: appBar,
              body: body,
            ));
      },
    );
  }
}
