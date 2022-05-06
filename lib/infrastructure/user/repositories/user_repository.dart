import 'dart:convert';
import 'dart:developer';

import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/error/error.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/common/value_objects/non_empty_value.dart';
import '../../../domain/tutor/models/language.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../domain/user/constants/target_student.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../../domain/user/models/speciality.dart';
import '../../../domain/user/models/user.dart';
import '../../../domain/user/value_objects/birthday.dart';
import '../../../domain/user/value_objects/name.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../dto/speciality_dto.dart';
import '../dto/user_dto.dart';
import '../utils/level_extension.dart';

@LazySingleton(
  as: UserRepository,
  env: [Environment.dev, Environment.prod, Environment.test],
)
class UserRepositoryImpl extends UserRepository {
  late final Box<String> _box;
  final ApiClient _apiClient;

  static const _keyUser = 'user';

  UserRepositoryImpl(
    @Named('secret') this._box,
    this._apiClient,
  );

  @override
  Future<Either<Failure, List<Speciality>>> getLearnTopics() async {
    try {
      final res = await FixtureLoader.learnTopicResponse;
      final list = List<SpecialityDto>.from(
        res.map((x) => SpecialityDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Speciality>>> getTestPreparationTopics() async {
    try {
      final res = await FixtureLoader.testPreparationResponse;
      final list = List<SpecialityDto>.from(
        res.map((x) => SpecialityDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUserInfo({
    required Name name,
    required BirthDay birthDay,
    required PhoneNumber? phoneNumber,
    required Country country,
    required Level level,
    required List<Speciality> learnTopics,
    required List<Speciality> testPreparations,
    XFile? profileImage,
  }) async {
    try {
      if (!_box.containsKey(_keyUser)) {
        return left(const Failure.internalError());
      }

      if (profileImage != null) {
        final uploadProfileResult = await uploadAvatar(profileImage);
        if (uploadProfileResult.isLeft()) {
          return uploadProfileResult;
        }
      }

      final nameValue = name.requireValue();
      final birthDayValue = birthDay.requireStringValue();
      final phoneNumberValue = phoneNumber?.requireValue() ?? '';
      final countryValue = country.isoCode;
      final levelValue = level.toEncodeString();
      final learnTopicValue = learnTopics.map((e) => e.id.toString()).toList();
      final testPreparationValue =
          testPreparations.map((e) => e.id.toString()).toList();

      final data = {
        'name': nameValue,
        'country': countryValue,
        'phone': phoneNumberValue,
        'birthday': birthDayValue,
        'level': levelValue,
        'learnTopics': learnTopicValue,
        'testPreparations': testPreparationValue
      };

      final result = await _apiClient.put(
        RequestUrl.user.info,
        data: data,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          return UserDto.fromJson(data['user']);
        },
      );

      if (result.isLeft()) {
        return left(
          result.fold((l) => l, (r) => const Failure.internalError()),
        );
      }
      final dto = result.getOrElse(() => throw NoValueError(result));

      await _box.put(_keyUser, jsonEncode(dto));
      return right(unit);
    } on NoValueError {
      return left(const Failure.internalError());
    }
  }

  Future<Either<Failure, Unit>> uploadAvatar(XFile profileImage) async {
    try {
      final fileStream = profileImage.openRead().map((event) => event.toList());
      final data = FormData.fromMap({
        'avatar': MultipartFile(
          fileStream,
          await profileImage.length(),
          filename: profileImage.name,
        ),
      });

      final result = await _apiClient.post(
        RequestUrl.user.uploadAvatar,
        data: data,
        onResponded: (_) => unit,
      );

      return result;
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final userStr = _box.get(_keyUser);
    final userDto =
        userStr != null ? UserDto.fromJson(jsonDecode(userStr)) : null;
    return optionOf(userDto?.toDomain());
  }

  @override
  Future<Either<Failure, User>> fetchUserInfo() async {
    try {
      final fetchResult = await _apiClient.get(
        RequestUrl.user.info,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          return UserDto.fromJson(data['user']);
        },
      );
      if (fetchResult.isLeft()) {
        return left(fetchResult.fold(
          (l) => l,
          (r) => const Failure.internalError(),
        ));
      }
      final dto = fetchResult.getOrElse(() => throw NoValueError(fetchResult));

      await _box.put(_keyUser, jsonEncode(dto));
      return fetchResult.map((r) => r.toDomain());
    } on FlutterError {
      return left(const Failure.internalError());
    } on NoValueError {
      return left(const Failure.internalError());
    }
  }

  @override
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
  }) async {
    try {
      final avatarSize = await avatar.length();
      // TODO move constants to domain folder
      if (avatarSize > 5 * 1024 * 1024) {
        return left(const Failure.avatarFileSizeExceedLimit());
      }
      final videoSize = await video.length();
      if (videoSize > 50 * 1024 * 1024) {
        return left(const Failure.videoFileSizeExceedLimit());
      }

      final nameValue = name.requireValue();
      final countryValue = country.isoCode;
      final birthdayValue = birthDay.requireStringValue();
      final interestsValue = interest.requireValue();
      final educationValue = education.requireValue();
      final experienceValue = experience.valueOrNull();
      final professionValue = profession.valueOrNull();
      final languagesValue = languages.map((element) => element.key).join(',');
      final bioValue = bio.requireValue();
      final targetStudentValue = targetStudent.toEncodedString();
      final specialitiesValue = specialities.map((e) => e.key).join(',');
      final avatarFileStream = avatar.openRead().map((event) => event.toList());
      final videoFileStream = video.openRead().map((event) => event.toList());

      final data = FormData.fromMap({
        'name': nameValue,
        'country': countryValue,
        'birthday': birthdayValue,
        'interests': interestsValue,
        'education': educationValue,
        'experience': experienceValue,
        'profession': professionValue,
        'languages': languagesValue,
        'bio': bioValue,
        'targetStudent': targetStudentValue,
        'specialties': specialitiesValue,
        'avatar': MultipartFile(
          avatarFileStream,
          avatarSize,
          filename: avatar.name,
        ),
        'video': MultipartFile(
          videoFileStream,
          videoSize,
          filename: video.name,
        ),
        'price': price,
      });

      final result = await _apiClient.post(
        RequestUrl.tutor.becomeTeacher,
        data: data,
        onResponded: (_) => unit,
      );

      return result;
    } on FlutterError {
      return left(const Failure.internalError());
    } on NoValueError catch (e) {
      log(e.toString());
      return left(const Failure.internalError());
    }
  }

  @override
  Future<String?> getSignedInUserRaw() async {
    final fetchResult = await _apiClient.get(
      RequestUrl.user.info,
      onResponded: (response) {
        return jsonEncode(response.data);
      },
    );
    if (fetchResult.isLeft()) {
      log(fetchResult.toString());
    }
    return fetchResult.fold((l) => null, (r) => r);
  }
}

extension TargetStudentX on TargetStudent {
  String toEncodedString() {
    switch (this) {
      case TargetStudent.beginner:
        return 'Beginner';
      case TargetStudent.intermediate:
        return 'Intermediate';
      case TargetStudent.advanced:
        return 'Advanced';
    }
  }
}
