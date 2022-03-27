import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/password.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/models/country.dart';

mixin AuthenticationFormBlocMixin<T> {
  get blocState;

  Future onEmailChanged(
    String emailStr,
    Emitter<T> emit,
  ) async {
    emit(blocState.copyWith(
      emailAddress: EmailAddress(emailStr),
      authFailureOrSuccessOption: none<Either<AuthenticationFailure, Unit>>(),
    ));
  }

  Future onPasswordChanged(
    String passwordStr,
    Emitter<T> emit,
  ) async {
    emit(blocState.copyWith(
      password: Password(passwordStr),
      authFailureOrSuccessOption: none<Either<AuthenticationFailure, Unit>>(),
    ));
  }

  Future onPhoneNumberChanged(
    Country country,
    String phoneNumber,
    Emitter<T> emit,
  ) async {
    emit(blocState.copyWith(
      phoneNumber: PhoneNumber.fromCountryCodeCombination(
        country: country,
        input: phoneNumber,
      ),
      authFailureOrSuccessOption: none<Either<AuthenticationFailure, Unit>>(),
    ));
  }
}
