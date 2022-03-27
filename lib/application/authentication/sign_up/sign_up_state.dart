part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {

  const factory SignUpState({
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required Password password,
    required Option<Either<AuthenticationFailure, Unit>>
        authFailureOrSuccessOption,
    required bool isLoading,
    required bool showError,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        authFailureOrSuccessOption: none(),
        isLoading: false,
        showError: false,
      );
}
