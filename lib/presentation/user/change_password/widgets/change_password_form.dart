import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/authentication/change_password/change_password_bloc.dart';
import '../../../authentication/widgets/password_input.dart';
import '../../../common.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({
    Key? key,
  }) : super(key: key);

  static const rowSpacing = 16.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.showError != current.showError,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // old password
                PasswordInput(
                  isEnabled: !state.isLoading,
                  labelText: context.l10n.currentPasswordTextBoxLabel,
                  onChanged: (value) => context.read<ChangePasswordBloc>().add(
                        ChangePasswordEvent.oldPasswordChanged(value),
                      ),
                  validator: (_) => context
                      .watch<ChangePasswordBloc>()
                      .state
                      .oldPassword
                      .value
                      .fold(
                        (f) => f.toMsg(context),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: rowSpacing),

                // new password
                PasswordInput(
                  isEnabled: !state.isLoading,
                  labelText: context.l10n.newPasswordTextBoxLabel,
                  onChanged: (value) => context.read<ChangePasswordBloc>().add(
                        ChangePasswordEvent.newPasswordChanged(value),
                      ),
                  validator: (_) => context
                      .watch<ChangePasswordBloc>()
                      .state
                      .newPassword
                      .value
                      .fold(
                        (f) => f.toMsg(context),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: rowSpacing),

                // confirm password
                PasswordInput(
                  isEnabled: !state.isLoading,
                  labelText: context.l10n.confirmPasswordTextBoxLabel,
                  hintText: context.l10n.confirmPasswordTextBoxHint,
                  onChanged: (value) => context.read<ChangePasswordBloc>().add(
                        ChangePasswordEvent.confirmPasswordChanged(value),
                      ),
                  validator: (_) => context
                      .watch<ChangePasswordBloc>()
                      .state
                      .confirmPassword
                      .value
                      .fold(
                        (f) => f.toMsg(context),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: rowSpacing),

                // submit button
                ElevatedButton.icon(
                  icon: const Icon(Icons.save_outlined),
                  onPressed: !state.isLoading
                      ? () => context.read<ChangePasswordBloc>().add(
                            const ChangePasswordEvent.buttonPressed(),
                          )
                      : null,
                  label: Text(
                    context.l10n.saveButtonLabel,
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleMedium?.fontSize,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(56),
                  ),
                ),

                if (state.isLoading) ...[
                  const SizedBox(height: 16),
                  const LinearProgressIndicator(),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
