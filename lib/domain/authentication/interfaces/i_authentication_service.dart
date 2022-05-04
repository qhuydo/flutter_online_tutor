import 'package:dartz/dartz.dart';

import '../../../infrastructure/authentication/dto/token.dart';
import '../../common/failures/failure.dart';
import '../../user/models/user.dart';
import '../events/authentication_service_event.dart';
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

  @Deprecated('Use UserRepository.getSignedInUser')
  Future<Option<User>> getSignedInUser();

  Future<Option<Tokens>> getTokens();

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

  Future<Either<AuthenticationFailure, Unit>> changePassword({
    required Password oldPassword,
    required Password newPassword,
  });

  Future<Either<AuthenticationFailure, Unit>> refreshToken();

  Stream<AuthenticationServiceEvent> subscribe();

  Future dispose();

  void addEvent(AuthenticationServiceEvent event);

  Future<Either<Failure, Unit>> verifyAccount(Uri uri);

  Future<Either<Failure, Unit>> signInWithGoogle(String token);
}
