import '../../../common.dart';
import '../../../common/app/app_icon.dart';
import '../../../common/app/app_info.dart';
import '../../helpers/setting_card_item.dart';
import 'settings_card.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingList = [
      SettingCardItem(
        iconData: Icons.info_outlined,
        title: context.l10n.aboutTheAppLabel,
        onTap: () {
          showAboutDialog(
            context: context,
            applicationIcon: const AppIcon(size: 70),
            applicationName: AppInfo.appName(context),
            applicationVersion: AppInfo.appVersion,
          );
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.copyright_outlined,
        title: context.l10n.licenseLabel,
        onTap: () {
          showLicensePage(
            context: context,
            applicationIcon: const AppIcon(size: 120),
            applicationName: AppInfo.appName(context),
            applicationVersion: AppInfo.appVersion,
          );
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.star_outline,
        title: context.l10n.rateLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),
      SettingCardItem(
        iconData: Icons.policy_outlined,
        title: context.l10n.termsOfServiceLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),
      SettingCardItem(
        iconData: Icons.privacy_tip_outlined,
        title: context.l10n.privacyPolicyLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),
    ];

    return SettingsCard(
      settingList: settingList,
      headerIcon: Icons.help_outline,
      title: context.l10n.helpAndInfoLabel,
    );
  }
}
