import 'package:flutter/material.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../common.dart';
import '../../common/utils/flushbar_utils.dart';

extension AuthenticationFailureX on AuthenticationFailure {
  Future showError(BuildContext context) {
    final l10n = context.l10n;
    return FlushBarUtils.createError(
      message: map(
        wrongEmailOrPassword: (_) => l10n.authenticationErrorWrongPassword,
        wrongPhoneNumberOrPassword: (_) =>
            l10n.authenticationFailureWrongPhoneOrPassword,
        noConnection: (_) => l10n.authenticationFailureNoInternet,
        serverError: (_) => l10n.authenticationFailureServerError,
        alreadySignedOut: (_) => l10n.authenticationFailureAlreadySignedOut,
        emailAlreadyTaken: (_) => l10n.authenticationFailureEmailTaken,
        phoneNumberAlreadyTaken: (_) => l10n.authenticationFailurePhoneTaken,
        emailNotExist: (_) => l10n.authenticationFailureEmailNotExist,
        wrongCurrentPassword: (_) => l10n.authenticationErrorWrongPassword,
        unauthorized: (_) => l10n.authenticationFailureUnauthorized,
      ),
      duration: const Duration(
        seconds: 15,
      ),
    ).show(context);
  }
}
