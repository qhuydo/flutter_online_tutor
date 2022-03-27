part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required Password password,
    required Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
    required bool isLoading,
    required bool showError,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    emailAddress: EmailAddress(''),
    phoneNumber: PhoneNumber(''),
    password: Password(''),
    authFailureOrSuccessOption: none(),
    isLoading: false,
    showError: false,
  );
}
