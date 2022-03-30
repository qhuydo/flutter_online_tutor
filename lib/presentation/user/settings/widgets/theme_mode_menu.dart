import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/common/app/app_cubit.dart';
import '../../../common.dart';
import '../helpers/theme_mode_extension.dart';

Widget changeLanguagePopupMenuButton(
  BuildContext context, {
  Key? key,
}) {
  return BlocBuilder<AppCubit, AppState>(
    buildWhen: (previous, current) => previous.themeMode != current.themeMode,
    builder: (context, state) {
      return PopupMenuButton<AppThemeMode>(
        key: key,
        onSelected: (value) {
          context.read<AppCubit>().changeThemeMode(value);
        },
        itemBuilder: (context) {
          return AppThemeMode.values
              .map((themeMode) => PopupMenuItem<AppThemeMode>(
                    value: themeMode,
                    child: ListTile(
                      leading: themeMode == state.themeMode
                          ? const Icon(Icons.check)
                          : const SizedBox(),
                      title: Text(themeMode.toOptionString(context)),
                      selected: themeMode == state.themeMode,
                    ),
                  ))
              .toList();
        },
        child: Text(
          state.themeMode.toStatusString(context),
          style: Theme.of(context).textTheme.caption,
        ),
      );
    },
  );
}
