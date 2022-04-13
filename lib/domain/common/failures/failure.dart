import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.noConnection() = _NoConnection;

  const factory Failure.serverError() = _ServerError;

  const factory Failure.apiError({
    int? errorCode,
    String? message,
  }) = _ApiError;

  const factory Failure.internalError() = _InternalError;

  const factory Failure.notFound() = _NotFound;

  // What a Terrible Failure
  const factory Failure.wtf(String? details) = _Wtf;

  const factory Failure.invalidTokenType() = _InvalidTokenType;

  const factory Failure.unauthenticated() = _Unauthenticated;

  const factory Failure.accountNotActivated() = _AccountNotActivated;

  const factory Failure.permissionDenied() = _PermissionDenied;

  const factory Failure.emailExisted() = _EmailExisted;

  const factory Failure.emailNotExist() = _EmailNotExist;

  const factory Failure.userNotRequestChangePassword() =
      _UserNotRequestChangePassword;

  const factory Failure.incorrectEmailOrPassword() = _IncorrectEmailOrPassword;

  const factory Failure.alreadyUpgradedToTutorAccount() =
      _AlreadyUpgradedToTutorAccount;

  const factory Failure.fileTypeNotSupported() = _FileTypeNotSupported;

  const factory Failure.bookingCanceledBefore1Day() =
      _BookingCanceledBefore1Day;

  const factory Failure.bookingExisted() = _BookingExisted;

  const factory Failure.bookingNotExist() = _BookingNotExist;

  const factory Failure.paymentSystem() = _PaymentSystem;

  const factory Failure.walletBlocked() = _WalletBlocked;

  const factory Failure.sellerNotEnough() = _SellerNotEnough;

  const factory Failure.endDateGreaterThanStartDate() =
      _EndDateGreadterThanStartDate;

  const factory Failure.periodDivisible30() = _PeriodDivisible30;

  const factory Failure.scheduleDuplicate() = _ScheduleDuplicate;

  const factory Failure.scheduleInvalidDate() = _ScheduleInvalidDate;

  const factory Failure.invalidRefreshToken() = _InvalidRefreshToken;

  const factory Failure.avatarFileSizeExceedLimit() =
      _AvatarFileSizeExceedLimit;

  const factory Failure.videoFileSizeExceedLimit() = _VideoFileSizeExceedLimit;

  const factory Failure.secretCodeNotFound() = _SecretCodeNotFound;

  const factory Failure.secretCodeExpired() = _SecretCodeExpired;

  const factory Failure.secretCodeUsed() = _SecretCodeUsed;

  const factory Failure.invalidPhoneNumber() = _InvalidPhoneNumber;

  const factory Failure.incorrectPassword() = _IncorrectPassword;

  const factory Failure.phoneActivated() = _PhoneActivated;

  const factory Failure.phoneExisted() = _PhoneExisted;

  const factory Failure.phoneNotRegistered() = _PhoneNotRegistered;

  const factory Failure.invalidPromotionCode() = _InvalidPromotionCode;

  const factory Failure.promotionCodeUsed() = _PromotionCodeUsed;

  factory Failure.fromErrorCode(int errorCode) {
    switch (errorCode) {
      case 0:
        return const Failure.invalidTokenType();
      case 1:
        return const Failure.unauthenticated();
      case 2:
        return const Failure.accountNotActivated();
      case 3:
        return const Failure.permissionDenied();
      case 4:
        return const Failure.emailExisted();
      case 5:
        return const Failure.emailNotExist();
      case 6:
        return const Failure.userNotRequestChangePassword();
      case 7:
        return const Failure.incorrectEmailOrPassword();
      case 8:
        return const Failure.alreadyUpgradedToTutorAccount();
      case 9:
        return const Failure.fileTypeNotSupported();
      case 10:
        return const Failure.bookingCanceledBefore1Day();
      case 11:
        return const Failure.bookingExisted();
      case 12:
        return const Failure.bookingNotExist();
      case 13:
        return const Failure.paymentSystem();
      case 14:
        return const Failure.walletBlocked();
      case 15:
        // ???
        return const Failure.serverError();
      case 16:
        return const Failure.sellerNotEnough();
      case 17:
        return const Failure.endDateGreaterThanStartDate();
      case 18:
        return const Failure.periodDivisible30();
      case 19:
        return const Failure.scheduleDuplicate();
      case 20:
        return const Failure.scheduleInvalidDate();
      case 21:
        return const Failure.invalidRefreshToken();
      case 22:
        // ???
        return const Failure.serverError();
      case 23:
        // ???
        return const Failure.serverError();
      case 24:
        return const Failure.avatarFileSizeExceedLimit();
      case 25:
        return const Failure.videoFileSizeExceedLimit();
      case 26:
        // ???
        return const Failure.serverError();
      case 27:
        // ???
        return const Failure.serverError();
      case 28:
        // ???
        return const Failure.serverError();
      case 29:
        return const Failure.secretCodeNotFound();
      case 30:
        return const Failure.secretCodeExpired();
      case 31:
        return const Failure.secretCodeUsed();
      case 32:
        return const Failure.invalidPhoneNumber();
      case 33:
        // ???
        return const Failure.serverError();
      case 34:
        return const Failure.incorrectPassword();
      case 35:
        return const Failure.phoneActivated();
      case 36:
        return const Failure.phoneExisted();
      case 37:
        return const Failure.phoneNotRegistered();
      case 38:
        return const Failure.invalidPromotionCode();
      case 39:
        return const Failure.promotionCodeUsed();
      default:
        return const Failure.serverError();
    }
  }
}
