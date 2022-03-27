part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required Option<Either<AuthenticationFailure, Unit>>
    authFailureOrSuccessOption,
    required bool isLoading,
    required bool showError,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
    emailAddress: EmailAddress(''),
    authFailureOrSuccessOption: none(),
    isLoading: false,
    showError: false,
  );
}
