import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/common/app/app_cubit.dart';
import '../../../../application/common/app/flex_scheme_mapper.dart';

Widget buildColourSchemeMenu(
  BuildContext context,
  Key? popupMenuKey,
) {

  return BlocBuilder<AppCubit, AppState>(
    buildWhen: (previous, current) =>
        previous.colourScheme != current.colourScheme,
    builder: (context, state) {
      final currentIndex = FlexScheme.values.indexOf(
        state.colourScheme.toFlexScheme(),
      );
      final theme = Theme.of(context);
      final isLight = theme.brightness == Brightness.light;

      return PopupMenuButton<int>(
        key: popupMenuKey,
        padding: EdgeInsets.zero,
        onSelected: (value) => context.read<AppCubit>().changeColourScheme(
              FlexScheme.values[value].toColourScheme(),
            ),
        itemBuilder: (BuildContext context) => [
          for (int i = 0; i < FlexColor.schemesList.length; i++)
            PopupMenuItem<int>(
              value: i,
              child: ListTile(
                leading: Icon(
                  Icons.lens,
                  color: isLight
                      ? FlexColor.schemesList[i].light.primary
                      : FlexColor.schemesList[i].dark.primary,
                  size: 36,
                ),
                title: Text(FlexColor.schemesList[i].name),
                selected: i == currentIndex,
              ),
            )
        ],
        child: Icon(
          Icons.lens,
          color: isLight
              ? FlexColor.schemesList[currentIndex].light.primary
              : FlexColor.schemesList[currentIndex].dark.primary,
          size: 40,
        ),
      );
    },
  );
}
