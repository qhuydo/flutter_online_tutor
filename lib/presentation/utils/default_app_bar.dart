import 'package:auto_route/auto_route.dart';

import '../common.dart';
import '../routes/app_routes.gr.dart';

PreferredSizeWidget buildAppBar(
  BuildContext context, {
  String? title,
  bool shouldShowDefaultActions = true,
}) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.surface,
    foregroundColor: Theme.of(context).colorScheme.onSurface,
    title: Text(
      title ?? AppLocalizations.of(context)!.appTitle,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
      ),
    ),
    elevation: 0,
    actions: shouldShowDefaultActions
        ? [
            GestureDetector(
              onTap: () {
                context.router.push(const SettingsRoute());
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(),
              ),
            ),
          ]
        : null,
  );
}
