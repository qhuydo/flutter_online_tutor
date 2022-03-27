import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../common/authentication_form_bloc_mixin.dart';

part 'reset_password_bloc.freezed.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState>
  with AuthenticationFormBlocMixin<ResetPasswordState> {

  final AuthenticationService _authService;

  ResetPasswordBloc(this._authService) : super(ResetPasswordState.initial()) {
    on<ResetPasswordEvent>((event, emit) async {
      await event.when(
        emailChanged: (emailStr) => onEmailChanged(emailStr, emit),
        buttonPressed: () => _onButtonPressed(emit),
      );
    });
  }

  @override
  get blocState => state;

  Future _onButtonPressed(Emitter<ResetPasswordState> emit) async {
    final isEmailValid = state.emailAddress.isValid();

    Either<AuthenticationFailure, Unit>? result;

    if (isEmailValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.resetPassword(
        emailAddress: state.emailAddress,
      );
    }

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      authFailureOrSuccessOption: optionOf(result),
    ));
  }
}
