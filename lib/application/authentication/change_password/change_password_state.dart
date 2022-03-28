part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required Password oldPassword,
    required Password newPassword,
    required ConfirmPassword confirmPassword,
    required Option<Either<AuthenticationFailure, Unit>>
        authFailureOrSuccessOption,
    required bool isLoading,
    required bool showError,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        oldPassword: Password(''),
        newPassword: Password(''),
        confirmPassword: ConfirmPassword(newPassword: Password(''), input: ''),
        authFailureOrSuccessOption: none(),
        isLoading: false,
        showError: false,
      );
}
