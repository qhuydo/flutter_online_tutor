import 'package:flutter/material.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common/utils/flushbar_utils.dart';

extension AuthenticationFailureX on AuthenticationFailure {
  Future<dynamic> showError(BuildContext context) {
    return FlushBarUtils.createError(
      message: map(
        wrongEmailOrPassword: (_) => 'Wrong email or password',
        wrongPhoneNumberOrPassword: (_) => 'Wrong phone number or password',
        noConnection: (_) => 'No internet connection',
        serverError: (_) => 'Server error',
        alreadySignedOut: (_) => 'Already signed out',
        emailAlreadyTaken: (_) => 'Email is already taken',
        phoneNumberAlreadyTaken: (_) => 'Phone number is already taken',
        emailNotExist: (_) => 'Email does not exist, please register '
            'new account',
        wrongCurrentPassword: (_) => 'Wrong current password',
        unauthorized: (_) => 'Unauthorized',
      ),
      duration: const Duration(
        seconds: 15,
      ),
    ).show(context);
  }
}