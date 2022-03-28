part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged(String passwordStr) =
      _OldPasswordChanged;

  const factory ChangePasswordEvent.newPasswordChanged(String passwordStr) =
      _NewPasswordChanged;

  const factory ChangePasswordEvent.confirmPasswordChanged(String passwordStr) =
      _ConfirmPasswordChanged;

  const factory ChangePasswordEvent.buttonPressed() = _ButtonPressed;

}
