part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory ResetPasswordEvent.buttonPressed() = _ButtonPressed;
}
