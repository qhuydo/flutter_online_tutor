import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/failures/email_failure.dart';
import '../../../domain/authentication/failures/password_failure.dart';
import '../../../domain/authentication/failures/phone_number_failure.dart';
import '../../../domain/authentication/failures/value_failure.dart';
import '../../../domain/common/failures/failure.dart';
import '../../common.dart';
import '../utils/flushbar_utils.dart';

extension FailureX on Failure {
  String toText(BuildContext context) {
    final l10n = context.l10n;

    // TODO update translation
    return when(
      noConnection: () => l10n.authenticationFailureNoInternet,
      serverError: () => l10n.authenticationFailureServerError,
      apiError: (_, __) => l10n.authenticationFailureServerError,
      internalError: () => l10n.valueFalureUnknownError,
      notFound: () => l10n.pageNotFound,
      wtf: (_) => '???',
      invalidTokenType: () => l10n.authenticationFailureUnauthorized,
      unauthenticated: () => l10n.authenticationFailureUnauthorized,
      accountNotActivated: () => l10n.authenticationFailureUnauthorized,
      permissionDenied: () => l10n.authenticationFailureUnauthorized,
      emailExisted: () => l10n.authenticationFailureEmailTaken,
      emailNotExist: () => l10n.authenticationFailureEmailNotExist,
      userNotRequestChangePassword: () => l10n.valueFalureUnknownError,
      incorrectEmailOrPassword: () =>
          l10n.authenticationFailureWrongEmailOrPassword,
      alreadyUpgradedToTutorAccount: () => '',
      fileTypeNotSupported: () => 'File not supported',
      bookingCanceledBefore1Day: () =>
          'Upcoming schedules can be canceled only before 1 day',
      bookingExisted: () => 'Booking has already exists',
      bookingNotExist: () => 'Booking does not exist',
      paymentSystem: () => 'The payment system has problems',
      walletBlocked: () => 'Your wallet is blocked"',
      sellerNotEnough: () => 'Seller amount is not enough',
      endDateGreaterThanStartDate: () =>
          'End time should be greater than start time',
      periodDivisible30: () => 'The period must be divisible by 30',
      scheduleDuplicate: () => 'Conflict to register schedule',
      scheduleInvalidDate: () =>
          'The schedule is registered with an invalid date',
      invalidRefreshToken: () =>
          'Session has been expired. Please Log in again',
      avatarFileSizeExceedLimit: () =>
          'The avatar size exceeds the limit allowed (5MB)',
      videoFileSizeExceedLimit: () =>
          'The video size exceeds the limit allowed (50MB)"',
      secretCodeNotFound: () => 'The OTP is invalid',
      secretCodeExpired: () => 'The OTP was expired',
      secretCodeUsed: () => 'The OTP has been used',
      invalidPhoneNumber: () => l10n.phoneNumberFailureInvalidPhoneNumber,
      incorrectPassword: () => l10n.authenticationErrorWrongPassword,
      phoneActivated: () => 'The phone number has already been activated',
      phoneExisted: () => l10n.authenticationFailurePhoneTaken,
      phoneNotRegistered: () => l10n.authenticationFailureWrongPhoneOrPassword,
      invalidPromotionCode: () => 'Invalid promotion code',
      promotionCodeUsed: () => 'This promotion code was used',
    );
  }
}

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
        // accountNotActivated: (_) => l10n.authenticationFailureAccountNotActivated,
        accountNotActivated: (_) => 'Your account has not activated. \n'
            'Please checkout your email to activate the account',
      ),
      duration: const Duration(
        seconds: 15,
      ),
    ).show(context);
  }
}

extension EmailFailureX on EmailFailure {
  String toText(BuildContext context) => map(
        invalidEmail: (_) => context.l10n.emailFailureInvalidEmail,
        empty: (_) => context.l10n.emailFailureEmptyValue,
      );
}

extension PasswordFailureX on PasswordFailure {
  String toText(BuildContext context) {
    final l10n = context.l10n;
    return map(
      shortPassword: (_) => l10n.passwordFailureShortPassword,
      emptyPassword: (_) => l10n.passwordFailureEmptyPassword,
      wrongCurrentPassword: (_) => l10n.passwordFailureWrongCurrentPassword,
      wrongNewPassword: (_) => l10n.passwordValueWrongNewPassword,
    );
  }
}

extension PhoneNumberFailureX on PhoneNumberFailure {
  String toText(BuildContext context) {
    final l10n = context.l10n;
    return map(
      emptyValue: (_) => l10n.phoneNumberFailureInvalidPhoneNumber,
      invalidPhoneNumber: (_) => l10n.phoneNumberFailureInvalidPhoneNumber,
      invalidCountryCode: (_) => l10n.phoneNumberFailureInvalidPhoneNumber,
    );
  }
}

extension ValueFailureX on ValueFailure {
  String toErrorText(BuildContext context) {
    final l10n = context.l10n;
    return when(
      () => l10n.valueFalureUnknownError,
      valueIsRequired: () => l10n.valueFailureEmptyValue,
      emptyValue: () => l10n.valueFailureEmptyValue,
      invalidValue: () => l10n.valueFailureValueInvalid,
    );
  }
}
