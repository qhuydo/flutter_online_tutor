import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/password.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/models/country.dart';
import '../common/authentication_form_bloc_mixin.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState>
    with AuthenticationFormBlocMixin {
  final AuthenticationService _authService;

  LoginBloc(this._authService) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        emailChanged: (emailStr) => onEmailChanged(emailStr, emit),
        passwordChanged: (passwordStr) => onPasswordChanged(passwordStr, emit),
        phoneNumberChanged: (country, phoneNumber) => onPhoneNumberChanged(
          country,
          phoneNumber,
          emit,
        ),
        logInWithEmailAndPasswordPressed: () =>
            _onLogInWithEmailAndPasswordPressed(emit),
        logInWithPhoneAndPasswordPressed: () =>
            _onLogInWithPhoneAndPasswordPressed(emit),
      );
    });
  }

  // TODO remove duplications
  Future _onLogInWithEmailAndPasswordPressed(Emitter<LoginState> emit) async {
    final isPasswordValid = state.password.isValid();
    final isEmailValid = state.emailAddress.isValid();

    Either<AuthenticationFailure, Unit>? result;

    if (isPasswordValid && isEmailValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.signIn(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      authFailureOrSuccessOption: optionOf(result),
    ));
  }

  Future _onLogInWithPhoneAndPasswordPressed(Emitter<LoginState> emit) async {
    final isPasswordValid = state.password.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();

    Either<AuthenticationFailure, Unit>? result;

    if (isPasswordValid && isPhoneNumberValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.signInWithPhone(
        phoneNumber: state.phoneNumber,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      authFailureOrSuccessOption: optionOf(result),
    ));
  }

  @override
  get blocState => state;
}
