import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/login/login_bloc.dart';
import '../../common.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: context.l10n.emailLabel,
            hintText: context.l10n.emailTextBoxHint,
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            border: const OutlineInputBorder(),
          ),
          onChanged: (value) => context.read<LoginBloc>().add(
                LoginEvent.emailChanged(value),
              ),
          validator: (_) =>
              // TODO add translation
              state.emailAddress.value.fold(
            (f) => f.map(
              invalidEmail: (_) => 'Invalid email',
              empty: (_) => 'Please enter your email',
            ),
            (_) => null,
          ),
        );
      },
    );
  }
}
