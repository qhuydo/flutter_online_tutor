import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/change_password/change_password_bloc.dart';
import '../../authentication/helpers/authentication_failure_extension.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/change_password_form.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChangePasswordBloc>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          shouldShowDefaultActions: false,
          title: context.l10n.changePasswordLabel,
        ),
        body: const SafeArea(child: _ChangePasswordPage()),
      ),
    );
  }
}

class _ChangePasswordPage extends StatelessWidget {
  const _ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listenWhen: (previous, current) =>
          previous.authFailureOrSuccessOption !=
          current.authFailureOrSuccessOption,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => failure.showError(context),
            (_) => showDialog(
              context: context,
              // TODO add translation
              builder: (context) => AlertDialog(
                title: const Text('Change password'),
                content: const Text('Change password successfully'),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.router.navigate(const SettingsRoute());
                    },
                    child: const Text(
                      'OK',
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ).then((_) => context.router.navigate(const SettingsRoute())),
          ),
        );
      },
      child: Center(
        child: ConstrainedBox(
          // TODO re-organise size constraints
          constraints: BoxConstraints.loose(const Size(800, double.infinity)),
          child: const ChangePasswordForm(),
        ),
      ),
    );
  }
}
