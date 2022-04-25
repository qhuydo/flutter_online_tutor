import '../../../domain/common/failures/failure.dart';
import '../../common.dart';

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
