import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../application/common/app/app_cubit.dart';
import '../../../../domain/common/app/language.dart';
import '../../../common.dart';
import '../../helpers/setting_card_item.dart';
import '../helpers/language_extension.dart';
import 'change_language_modal.dart';
import 'change_theme_menu.dart';
import 'colour_scheme_menu.dart';
import 'settings_card.dart';

class AppSettingsCard extends StatefulWidget {
  const AppSettingsCard({Key? key}) : super(key: key);

  @override
  State<AppSettingsCard> createState() => _AppSettingsCardState();
}

class _AppSettingsCardState extends State<AppSettingsCard> {
  final _changeThemeMenuKey = GlobalKey();
  final _changeColourSchemeMenuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final changeLanguageButton = changeLanguagePopupMenuButton(
      context,
      key: _changeThemeMenuKey,
    );

    final changeColourSchemeMenuButton = buildColourSchemeMenu(
      context,
      _changeColourSchemeMenuKey,
    );

    final _settingList = [
      SettingCardItem(
        iconData: Icons.dark_mode_outlined,
        title: context.l10n.darkModeLabel,
        onTap: () {
          final dynamic state = _changeThemeMenuKey.currentState;
          state?.showButtonMenu();
        },
        trailingWidget: changeLanguageButton,
      ),
      SettingCardItem(
        iconData: Icons.palette_outlined,
        title: context.l10n.colorPaletteLabel,
        onTap: () {
          final dynamic state = _changeColourSchemeMenuKey.currentState;
          state?.showButtonMenu();
        },
        trailingWidget: changeColourSchemeMenuButton,
      ),
      SettingCardItem(
        iconData: Icons.language,
        title: context.l10n.languageLabel,
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Dialog(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ChangeLanguageModal(),
                  ),
                );
              });
        },
        trailingWidget: BlocBuilder<AppCubit, AppState>(
          buildWhen: (previous, current) =>
              previous.language != current.language,
          builder: (context, state) {
            if (state.language == Language.followSystem) {
              return Text(
                context.l10n.languageDefaultValue,
                style: Theme.of(context).textTheme.caption,
              );
            }
            return Twemoji(
              emoji: state.language.toEmoji(),
              width: 32,
              height: 32,
            );
          },
        ),
      ),
    ];

    return SettingsCard(
      settingList: _settingList,
      headerIcon: Icons.settings,
      title: context.l10n.settingsCardHeader,
    );
  }
}
