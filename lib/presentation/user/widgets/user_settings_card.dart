import '../../common.dart';
import '../helpers/list_item.dart';
import 'settings_card.dart';

class UserSettingsCard extends StatelessWidget {
  const UserSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingList = [
      ListItem(
        iconData: Icons.manage_accounts_outlined,
        title: AppLocalizations.of(context)!.editProfileLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      ListItem(
        iconData: Icons.password,
        title: AppLocalizations.of(context)!.changePasswordLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      ListItem(
        iconData: Icons.account_balance_wallet_outlined,
        title: AppLocalizations.of(context)!.myWalletLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      ListItem(
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
        onTap: () {},
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
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
