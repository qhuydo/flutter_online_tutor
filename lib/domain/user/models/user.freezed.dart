// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required Id id,
      required EmailAddress emailAddress,
      required Name name,
      PhoneNumber? phoneNumber,
      String? avatar,
      BirthDay? birthday,
      Country? country,
      Level level = Level.none,
      List<Speciality> learningTopics = const [],
      List<Speciality> testPreparationTopics = const [],
      dynamic tutorFormCompleted = false}) {
    return _User(
      id: id,
      emailAddress: emailAddress,
      name: name,
      phoneNumber: phoneNumber,
      avatar: avatar,
      birthday: birthday,
      country: country,
      level: level,
      learningTopics: learningTopics,
      testPreparationTopics: testPreparationTopics,
      tutorFormCompleted: tutorFormCompleted,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  Id get id => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  BirthDay? get birthday => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  Level get level => throw _privateConstructorUsedError;
  List<Speciality> get learningTopics => throw _privateConstructorUsedError;
  List<Speciality> get testPreparationTopics =>
      throw _privateConstructorUsedError;
  dynamic get tutorFormCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {Id id,
      EmailAddress emailAddress,
      Name name,
      PhoneNumber? phoneNumber,
      String? avatar,
      BirthDay? birthday,
      Country? country,
      Level level,
      List<Speciality> learningTopics,
      List<Speciality> testPreparationTopics,
      dynamic tutorFormCompleted});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? birthday = freezed,
    Object? country = freezed,
    Object? level = freezed,
    Object? learningTopics = freezed,
    Object? testPreparationTopics = freezed,
    Object? tutorFormCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as BirthDay?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      learningTopics: learningTopics == freezed
          ? _value.learningTopics
          : learningTopics // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      testPreparationTopics: testPreparationTopics == freezed
          ? _value.testPreparationTopics
          : testPreparationTopics // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      tutorFormCompleted: tutorFormCompleted == freezed
          ? _value.tutorFormCompleted
          : tutorFormCompleted // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Id id,
      EmailAddress emailAddress,
      Name name,
      PhoneNumber? phoneNumber,
      String? avatar,
      BirthDay? birthday,
      Country? country,
      Level level,
      List<Speciality> learningTopics,
      List<Speciality> testPreparationTopics,
      dynamic tutorFormCompleted});

  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? birthday = freezed,
    Object? country = freezed,
    Object? level = freezed,
    Object? learningTopics = freezed,
    Object? testPreparationTopics = freezed,
    Object? tutorFormCompleted = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as BirthDay?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      learningTopics: learningTopics == freezed
          ? _value.learningTopics
          : learningTopics // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      testPreparationTopics: testPreparationTopics == freezed
          ? _value.testPreparationTopics
          : testPreparationTopics // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      tutorFormCompleted: tutorFormCompleted == freezed
          ? _value.tutorFormCompleted
          : tutorFormCompleted,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.emailAddress,
      required this.name,
      this.phoneNumber,
      this.avatar,
      this.birthday,
      this.country,
      this.level = Level.none,
      this.learningTopics = const [],
      this.testPreparationTopics = const [],
      this.tutorFormCompleted = false})
      : super._();

  @override
  final Id id;
  @override
  final EmailAddress emailAddress;
  @override
  final Name name;
  @override
  final PhoneNumber? phoneNumber;
  @override
  final String? avatar;
  @override
  final BirthDay? birthday;
  @override
  final Country? country;
  @JsonKey()
  @override
  final Level level;
  @JsonKey()
  @override
  final List<Speciality> learningTopics;
  @JsonKey()
  @override
  final List<Speciality> testPreparationTopics;
  @JsonKey()
  @override
  final dynamic tutorFormCompleted;

  @override
  String toString() {
    return 'User(id: $id, emailAddress: $emailAddress, name: $name, phoneNumber: $phoneNumber, avatar: $avatar, birthday: $birthday, country: $country, level: $level, learningTopics: $learningTopics, testPreparationTopics: $testPreparationTopics, tutorFormCompleted: $tutorFormCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.learningTopics, learningTopics) &&
            const DeepCollectionEquality()
                .equals(other.testPreparationTopics, testPreparationTopics) &&
            const DeepCollectionEquality()
                .equals(other.tutorFormCompleted, tutorFormCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(learningTopics),
      const DeepCollectionEquality().hash(testPreparationTopics),
      const DeepCollectionEquality().hash(tutorFormCompleted));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required Id id,
      required EmailAddress emailAddress,
      required Name name,
      PhoneNumber? phoneNumber,
      String? avatar,
      BirthDay? birthday,
      Country? country,
      Level level,
      List<Speciality> learningTopics,
      List<Speciality> testPreparationTopics,
      dynamic tutorFormCompleted}) = _$_User;
  const _User._() : super._();

  @override
  Id get id;
  @override
  EmailAddress get emailAddress;
  @override
  Name get name;
  @override
  PhoneNumber? get phoneNumber;
  @override
  String? get avatar;
  @override
  BirthDay? get birthday;
  @override
  Country? get country;
  @override
  Level get level;
  @override
  List<Speciality> get learningTopics;
  @override
  List<Speciality> get testPreparationTopics;
  @override
  dynamic get tutorFormCompleted;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
