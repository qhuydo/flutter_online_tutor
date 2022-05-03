import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';

import '../../authentication/value_objects/phone_number.dart';
import '../../common/failures/failure.dart';
import '../../common/models/country.dart';
import '../../common/value_objects/non_empty_value.dart';
import '../../tutor/models/language.dart';
import '../constants/levels.dart';
import '../constants/target_student.dart';
import '../models/speciality.dart';
import '../models/user.dart';
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
    XFile? profileImage,
  });

  Future<Option<User>> getSignedInUser();

  Future<Either<Failure, User>> fetchUserInfo();

  Future<Either<Failure, Unit>> registerAsTeacher({
    required Name name,
    required Country country,
    required BirthDay birthDay,
    required NonEmptyValue interest,
    required NonEmptyValue education,
    required NonEmptyValue experience,
    required NonEmptyValue profession,
    required List<Language> languages,
    required NonEmptyValue bio,
    required TargetStudent targetStudent,
    required List<Speciality> specialities,
    required XFile avatar,
    required XFile video,
    String price = '500000',
  });
}
