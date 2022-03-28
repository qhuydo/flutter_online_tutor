import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/authentication/authentication_bloc.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../helpers/setting_card_item.dart';
import 'settings_card.dart';

class UserSettingsCard extends StatelessWidget {
  const UserSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingList = [
      SettingCardItem(
        iconData: Icons.history_outlined,
        title: context.l10n.historyTitle,
        onTap: () {
          context.router.push(const HistoryRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.manage_accounts_outlined,
        title: context.l10n.editProfileLabel,
        onTap: () {
          context.router.push(const ProfileRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.password,
        title: context.l10n.changePasswordLabel,
        onTap: () {
          context.router.push(const ChangePasswordRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.account_balance_wallet_outlined,
        title: context.l10n.myWalletLabel,
        onTap: () {},
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.assignment_ind_outlined,
        title: context.l10n.becomeTeacherLabel,
        onTap: () {
          context.router.push(const BecomeTutorRoute());
        },
        trailingWidget: const Icon(
          Icons.navigate_next,
        ),
      ),
      SettingCardItem(
        iconData: Icons.logout,
        title: context.l10n.logOutLabel,
        onTap: () {
          context.read<AuthenticationBloc>().add(
            const AuthenticationEvent.signedOut(),
          );
          context.read<AuthenticationBloc>().add(
            const AuthenticationEvent.authCheckRequested(),
          );
          context.router.popUntilRoot();
          context.router.replace(const LoginRoute());
        },
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
