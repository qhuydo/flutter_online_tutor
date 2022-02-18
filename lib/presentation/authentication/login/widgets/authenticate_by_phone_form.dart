import 'package:flutter/material.dart';

import '../../../common/widgets/phone_number_input.dart';
import 'password_input.dart';

class AuthenticateByPhoneNumberForm extends StatelessWidget {
  const AuthenticateByPhoneNumberForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // InternationalPhoneNumberInput(
        //   onInputChanged: (_) => {},
        //   formatInput: true,
        //   inputDecoration: const InputDecoration(
        //     border: OutlineInputBorder()
        //   ),
        // ),
        PhoneNumberInput(),
        SizedBox(
          height: 16,
        ),
        PasswordInput()
      ],
    );
  }
}
