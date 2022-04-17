import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../common.dart';
import '../routes/app_routes.gr.dart';

PreferredSizeWidget buildAppBar(
  BuildContext context, {
  String? title,
  bool shouldShowDefaultActions = false,
  double? elevation,
}) {
  return AppBar(
    title: Text(
      title ?? AppLocalizations.of(context)!.appTitle,
    ),
    elevation: elevation ?? 0.75,
    shadowColor: Colors.grey[500]?.withOpacity(0.5),
    actions: shouldShowDefaultActions
        ? [
            GestureDetector(
              onTap: () {
                context.router.push(const SettingsRoute());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    final avatar = state.when(
                      initial: () => null,
                      authenticated: (state) => state.avatar,
                      unauthenticated: () => null,
                    );
                    return CircleAvatar(
                      backgroundImage: NetworkImage(avatar ?? ''),
                      onBackgroundImageError: (exception, stackTrace) {},
                    );
                  },
                ),
              ),
            )
          ]
        : null,
  );
}
