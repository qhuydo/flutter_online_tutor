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
          context.read<AuthenticationBloc>()
            ..add(const AuthenticationEvent.signedOut())
            ..add(const AuthenticationEvent.authCheckRequested());

          context.router
            ..popUntilRoot()
            ..replace(const LoginRoute());
        },
        color: Colors.red,
      ),
    ];

    return SettingsCard(
      settingList: _settingList,
      headerIcon: Icons.account_box,
      // TODO: update translation
      title: 'Profile',
    );
  }
}
