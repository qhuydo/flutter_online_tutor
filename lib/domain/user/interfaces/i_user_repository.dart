import 'package:dartz/dartz.dart';

import '../../authentication/value_objects/phone_number.dart';
import '../../common/failures/failure.dart';
import '../../common/models/country.dart';
import '../constants/levels.dart';
import '../models/speciality.dart';
import '../value_objects/birthday.dart';
import '../value_objects/name.dart';

abstract class UserRepository {
  Future<Either<Failure, List<Speciality>>> getLearnTopics();

  Future<Either<Failure, List<Speciality>>> getTestPreparationTopics();

  Future<Either<Failure, Unit>> updateUserInfo({
    required Name name,
    required BirthDay birthDay,
    required PhoneNumber? phoneNumber,
    required Country country,
    required Level level,
    required List<Speciality> learnTopics,
    required List<Speciality> testPreparations,
  });
}
