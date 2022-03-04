import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../routes/app_routes.gr.dart';
import '../../helpers/setting_card_item.dart';
import 'settings_card.dart';

class UserSettingsCard extends StatelessWidget {
  const UserSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingList = [
      SettingCardItem(
        iconData: Icons.history_outlined,
        title: AppLocalizations.of(context)!.historyTitle,
        onTap: () {
          context.router.push(const HistoryRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.manage_accounts_outlined,
        title: AppLocalizations.of(context)!.editProfileLabel,
        onTap: () {
          context.router.push(const ProfileRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.password,
        title: AppLocalizations.of(context)!.changePasswordLabel,
        onTap: () {
          context.router.push(const ChangePasswordRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.account_balance_wallet_outlined,
        title: AppLocalizations.of(context)!.myWalletLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.assignment_ind_outlined,
        title: AppLocalizations.of(context)!.becomeTeacherLabel,
        onTap: () {
          context.router.push(const BecomeTutorRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.logout,
        title: AppLocalizations.of(context)!.logOutLabel,
        onTap: () {},
        color: Colors.red,
      ),
    ];

    return SettingsCard(
      settingList: _settingList,
      header: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        onTap: () {
          context.router.push(const ProfileRoute());
        },
        contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 36,
        ),
        title: Text(
          'Nguyen Van A',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          'example@email.com',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        trailing: Icon(
          Icons.navigate_next,
          size: 32,
          color: Theme.of(context).buttonTheme.colorScheme?.onSurface,
        ),
      ),
    );
  }
}
