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

part 'sign_up_bloc.freezed.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState>
    with AuthenticationFormBlocMixin<SignUpState> {

  final AuthenticationService _authService;

  SignUpBloc(this._authService) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        emailChanged: (emailStr) => onEmailChanged(emailStr, emit),
        passwordChanged: (passwordStr) => onPasswordChanged(passwordStr, emit),
        phoneNumberChanged: (country, phoneNumber) =>
            onPhoneNumberChanged(country, phoneNumber, emit),
        signUpWithEmailAndPasswordPressed: () =>
            _onSignUpWithEmailAndPasswordPressed(emit),
        signUpWithPhoneAndPasswordPressed: () =>
            _onSignUpWithPhoneAndPasswordPressed(emit),
      );
    });
  }

  // TODO remove duplications
  Future _onSignUpWithEmailAndPasswordPressed(Emitter emit) async {
    final isPasswordValid = state.password.isValid();
    final isEmailValid = state.emailAddress.isValid();

    Either<AuthenticationFailure, Unit>? result;

    if (isPasswordValid && isEmailValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.signUp(
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

  Future _onSignUpWithPhoneAndPasswordPressed(Emitter emit) async {
    final isPasswordValid = state.password.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();

    Either<AuthenticationFailure, Unit>? result;

    if (isPasswordValid && isPhoneNumberValid) {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));

      result = await _authService.signUpWithPhone(
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
