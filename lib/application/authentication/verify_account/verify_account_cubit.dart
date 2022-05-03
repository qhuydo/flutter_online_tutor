import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/common/failures/failure.dart';

part 'verify_account_cubit.freezed.dart';

part 'verify_account_state.dart';

class VerifyAccountCubit extends Cubit<VerifyAccountState> {
  final AuthenticationService _authenticationService;

  VerifyAccountCubit(
    this._authenticationService,
    String token,
  ) : super(VerifyAccountState(token: token));

  void verify() async {
    emit(state.copyWith(isLoading: true));

    final result = await _authenticationService.verifyAccount(state.token);

    emit(state.copyWith(
      isLoading: false,
      requestSucceedOrFailed: result,
    ));
  }
}
