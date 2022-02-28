import '../../../common.dart';
import '../../helpers/setting_card_item.dart';
import 'settings_card.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingList = [
      SettingCardItem(
        iconData: Icons.info_outlined,
        title: AppLocalizations.of(context)!.aboutTheAppLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.copyright_outlined,
        title: AppLocalizations.of(context)!.licenseLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.star_outline,
        title: AppLocalizations.of(context)!.rateLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),
      SettingCardItem(
        iconData: Icons.policy_outlined,
        title: AppLocalizations.of(context)!.termsOfServiceLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),
      SettingCardItem(
        iconData: Icons.privacy_tip_outlined,
        title: AppLocalizations.of(context)!.privacyPolicyLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.open_in_new,
        ),
      ),

    ];

    return SettingsCard(settingList: settingList,
    headerIcon: Icons.help_outline,
      title: AppLocalizations.of(context)!.helpAndInfoLabel,
    );
  }
}
