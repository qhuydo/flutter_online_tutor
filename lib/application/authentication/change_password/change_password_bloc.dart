import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/confirm_password.dart';
import '../../../domain/authentication/value_objects/password.dart';

part 'change_password_bloc.freezed.dart';

part 'change_password_event.dart';

part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final AuthenticationService _authService;

  ChangePasswordBloc(this._authService) : super(ChangePasswordState.initial()) {
    on<ChangePasswordEvent>((event, emit) async {
      await event.when(
        oldPasswordChanged: (passwordStr) => _onOldPasswordChanged(
          passwordStr,
          emit,
        ),
        newPasswordChanged: (passwordStr) => _onNewPasswordChanged(
          passwordStr,
          emit,
        ),
        confirmPasswordChanged: (passwordStr) => _onConfirmPasswordChanged(
          passwordStr,
          emit,
        ),
        buttonPressed: () => _onButtonPressed(emit),
      );
    });
  }

  Future _onOldPasswordChanged(
    String passwordStr,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(
      oldPassword: Password(passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onNewPasswordChanged(
    String passwordStr,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(
      newPassword: Password(passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onConfirmPasswordChanged(
    String passwordStr,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(
      confirmPassword: ConfirmPassword(
        newPassword: state.newPassword,
        input: passwordStr,
      ),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future _onButtonPressed(
    Emitter<ChangePasswordState> emit,
  ) async {
    final isOldPwdValid = state.oldPassword.isValid();
    final isNewPwdValid = state.newPassword.isValid();
    final isConfirmPwdValid = state.confirmPassword.isValid();

    final isValid = isOldPwdValid && isNewPwdValid && isConfirmPwdValid;

    Either<AuthenticationFailure, Unit>? result;

    if (isValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.changePassword(
        oldPassword: state.oldPassword,
        newPassword: state.newPassword,
      );
    }

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      authFailureOrSuccessOption: optionOf(result),
    ));
  }
}
