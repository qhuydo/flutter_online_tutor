// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {required String id,
      required String email,
      required String name,
      String? avatar,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletDto? walletInfo,
      List<CourseDto>? courses,
      String? level,
      List<SpecialityDto> learnTopics = const [],
      List<SpecialityDto> testPreparations = const [],
      Object? tutorInfo}) {
    return _UserDto(
      id: id,
      email: email,
      name: name,
      avatar: avatar,
      country: country,
      phone: phone,
      language: language,
      birthday: birthday,
      isActivated: isActivated,
      walletInfo: walletInfo,
      courses: courses,
      level: level,
      learnTopics: learnTopics,
      testPreparations: testPreparations,
      tutorInfo: tutorInfo,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  bool? get isActivated => throw _privateConstructorUsedError;
  WalletDto? get walletInfo => throw _privateConstructorUsedError;
  List<CourseDto>? get courses => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  List<SpecialityDto> get learnTopics => throw _privateConstructorUsedError;
  List<SpecialityDto> get testPreparations =>
      throw _privateConstructorUsedError; // required bool isPhoneActivated,
// required int timezone,
  Object? get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      String? avatar,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletDto? walletInfo,
      List<CourseDto>? courses,
      String? level,
      List<SpecialityDto> learnTopics,
      List<SpecialityDto> testPreparations,
      Object? tutorInfo});

  $WalletDtoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? courses = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: isActivated == freezed
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: walletInfo == freezed
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletDto?,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseDto>?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: learnTopics == freezed
          ? _value.learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<SpecialityDto>,
      testPreparations: testPreparations == freezed
          ? _value.testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<SpecialityDto>,
      tutorInfo: tutorInfo == freezed ? _value.tutorInfo : tutorInfo,
    ));
  }

  @override
  $WalletDtoCopyWith<$Res>? get walletInfo {
    if (_value.walletInfo == null) {
      return null;
    }

    return $WalletDtoCopyWith<$Res>(_value.walletInfo!, (value) {
      return _then(_value.copyWith(walletInfo: value));
    });
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      String? avatar,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletDto? walletInfo,
      List<CourseDto>? courses,
      String? level,
      List<SpecialityDto> learnTopics,
      List<SpecialityDto> testPreparations,
      Object? tutorInfo});

  @override
  $WalletDtoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? isActivated = freezed,
    Object? walletInfo = freezed,
    Object? courses = freezed,
    Object? level = freezed,
    Object? learnTopics = freezed,
    Object? testPreparations = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivated: isActivated == freezed
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletInfo: walletInfo == freezed
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletDto?,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseDto>?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      learnTopics: learnTopics == freezed
          ? _value.learnTopics
          : learnTopics // ignore: cast_nullable_to_non_nullable
              as List<SpecialityDto>,
      testPreparations: testPreparations == freezed
          ? _value.testPreparations
          : testPreparations // ignore: cast_nullable_to_non_nullable
              as List<SpecialityDto>,
      tutorInfo: tutorInfo == freezed ? _value.tutorInfo : tutorInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {required this.id,
      required this.email,
      required this.name,
      this.avatar,
      this.country,
      this.phone,
      this.language,
      this.birthday,
      this.isActivated,
      this.walletInfo,
      this.courses,
      this.level,
      this.learnTopics = const [],
      this.testPreparations = const [],
      this.tutorInfo});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final String? country;
  @override
  final String? phone;
  @override
  final String? language;
  @override
  final String? birthday;
  @override
  final bool? isActivated;
  @override
  final WalletDto? walletInfo;
  @override
  final List<CourseDto>? courses;
  @override
  final String? level;
  @JsonKey()
  @override
  final List<SpecialityDto> learnTopics;
  @JsonKey()
  @override
  final List<SpecialityDto> testPreparations;
  @override // required bool isPhoneActivated,
// required int timezone,
  final Object? tutorInfo;

  @override
  String toString() {
    return 'UserDto(id: $id, email: $email, name: $name, avatar: $avatar, country: $country, phone: $phone, language: $language, birthday: $birthday, isActivated: $isActivated, walletInfo: $walletInfo, courses: $courses, level: $level, learnTopics: $learnTopics, testPreparations: $testPreparations, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.isActivated, isActivated) &&
            const DeepCollectionEquality()
                .equals(other.walletInfo, walletInfo) &&
            const DeepCollectionEquality().equals(other.courses, courses) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.learnTopics, learnTopics) &&
            const DeepCollectionEquality()
                .equals(other.testPreparations, testPreparations) &&
            const DeepCollectionEquality().equals(other.tutorInfo, tutorInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(isActivated),
      const DeepCollectionEquality().hash(walletInfo),
      const DeepCollectionEquality().hash(courses),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(learnTopics),
      const DeepCollectionEquality().hash(testPreparations),
      const DeepCollectionEquality().hash(tutorInfo));

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required String id,
      required String email,
      required String name,
      String? avatar,
      String? country,
      String? phone,
      String? language,
      String? birthday,
      bool? isActivated,
      WalletDto? walletInfo,
      List<CourseDto>? courses,
      String? level,
      List<SpecialityDto> learnTopics,
      List<SpecialityDto> testPreparations,
      Object? tutorInfo}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  String? get country;
  @override
  String? get phone;
  @override
  String? get language;
  @override
  String? get birthday;
  @override
  bool? get isActivated;
  @override
  WalletDto? get walletInfo;
  @override
  List<CourseDto>? get courses;
  @override
  String? get level;
  @override
  List<SpecialityDto> get learnTopics;
  @override
  List<SpecialityDto> get testPreparations;
  @override // required bool isPhoneActivated,
// required int timezone,
  Object? get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
