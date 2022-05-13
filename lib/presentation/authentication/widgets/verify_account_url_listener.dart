import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/common/app/app_cubit.dart';
import '../../../application/common/platform/platform_delegate.dart';
import '../../common/routes/app_routes.gr.dart';

class VerifyAccountUrlListener extends StatelessWidget {
  final Widget? child;

  const VerifyAccountUrlListener({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listenWhen: (previous, current) {
        return previous.initialUri != current.initialUri ||
            previous.initialUriIsHandled != current.initialUriIsHandled ||
            previous.latestUri != current.latestUri;
      },
      listener: (_, state) async {
        if (Target().isWeb) return;
        if (state.initialUri != null && !state.initialUriIsHandled) {
          await context.pushRoute(VerifyAccountRoute(uri: state.initialUri!));
          context.read<AppCubit>().initialUriHandled();
        }
        if (state.latestUri != null) {
          await context.pushRoute(VerifyAccountRoute(uri: state.latestUri!));
          context.read<AppCubit>().latestUriHandled();
        }
      },
      child: child,
    );
  }
}
