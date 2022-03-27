import 'package:dartz/dartz.dart';

import '../../user/models/user.dart';
import '../failures/authentication_failure.dart';
import '../value_objects/email_address.dart';
import '../value_objects/password.dart';
import '../value_objects/phone_number.dart';

abstract class AuthenticationService {
  Future<Either<AuthenticationFailure, Unit>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthenticationFailure, Unit>> signInWithPhone({
    required PhoneNumber phoneNumber,
    required Password password,
  });

  Future<bool> isSignedIn();

  Future<Either<AuthenticationFailure, Unit>> signOut();

  Future<Option<User>> getSignedInUser();

  Future<Either<AuthenticationFailure, Unit>> signUp({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthenticationFailure, Unit>> signUpWithPhone({
    required PhoneNumber phoneNumber,
    required Password password,
  });

  Future<Either<AuthenticationFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  });
}
