import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../application/common/app/app_cubit.dart';
import '../../../../application/common/app/flex_scheme_mapper.dart';
import '../../../../domain/common/app/colour_scheme.dart';

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
        onSelected: (value) {
          final ColourScheme colourScheme;
          if (value == -1) {
            colourScheme = ColourScheme.random;
          } else {
            colourScheme = FlexScheme.values[value].toColourScheme();
          }
          context.read<AppCubit>().changeColourScheme(colourScheme);
        },
        itemBuilder: (BuildContext context) => [
          PopupMenuItem<int>(
            value: -1,
            child: ListTile(
              leading: const Twemoji(
                emoji: '🍀',
                height: 36,
              ),
              title: const Text('I\'m feeling lucky'),
              selected: state.colourScheme == ColourScheme.random,
            ),
          ),
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
                selected: state.colourScheme != ColourScheme.random &&
                    i == currentIndex,
              ),
            )
        ],
        child: state.colourScheme == ColourScheme.random
            ? const Twemoji(
                emoji: '🍀',
                height: 40,
              )
            : Icon(
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
