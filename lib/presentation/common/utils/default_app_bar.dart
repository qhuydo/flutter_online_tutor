import 'package:auto_route/auto_route.dart';

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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(),
              ),
            ),
          ]
        : null,
  );
}
