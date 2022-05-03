part of 'verify_account_cubit.dart';

@freezed
class VerifyAccountState with _$VerifyAccountState {
  const factory VerifyAccountState({
    required String token,
    @Default(false) isLoading,
    @Default(Right(unit)) Either<Failure, Unit> requestSucceedOrFailed,
  }) = _VerifyAccountState;
}
