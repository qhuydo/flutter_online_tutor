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
        title: context.l10n.aboutTheAppLabel,
        onTap: () {},
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
            applicationIcon: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[700]!.withOpacity(0.6),
                  width: 1.25,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/icons/icon.png',
                ),
              ),
            ),
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
