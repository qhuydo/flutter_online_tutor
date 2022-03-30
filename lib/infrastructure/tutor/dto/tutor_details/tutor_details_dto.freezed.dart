// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorDetailsDto _$TutorDetailsDtoFromJson(Map<String, dynamic> json) {
  return _TutorDetailsDto.fromJson(json);
}

/// @nodoc
class _$TutorDetailsDtoTearOff {
  const _$TutorDetailsDtoTearOff();

  _TutorDetailsDto call(
      {required String id,
      required String userId,
      required String video,
      required String bio,
      required String education,
      required String experience,
      required String profession,
      required String targetStudent,
      required String interests,
      required String languages,
      required String specialties,
      @JsonKey(name: 'User') required User user,
      required bool isFavorite,
      required double avgRating,
      required int price}) {
    return _TutorDetailsDto(
      id: id,
      userId: userId,
      video: video,
      bio: bio,
      education: education,
      experience: experience,
      profession: profession,
      targetStudent: targetStudent,
      interests: interests,
      languages: languages,
      specialties: specialties,
      user: user,
      isFavorite: isFavorite,
      avgRating: avgRating,
      price: price,
    );
  }

  TutorDetailsDto fromJson(Map<String, Object?> json) {
    return TutorDetailsDto.fromJson(json);
  }
}

/// @nodoc
const $TutorDetailsDto = _$TutorDetailsDtoTearOff();

/// @nodoc
mixin _$TutorDetailsDto {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  String get experience => throw _privateConstructorUsedError;
  String get profession =>
      throw _privateConstructorUsedError; // dynamic accent,
  String get targetStudent => throw _privateConstructorUsedError;
  String get interests => throw _privateConstructorUsedError;
  String get languages => throw _privateConstructorUsedError;
  String get specialties =>
      throw _privateConstructorUsedError; // dynamic resume,
// bool isActivated,
// dynamic isNative,
// DateTime createdAt,
// DateTime updatedAt,
// "stoopid" api returns 'User' instead of 'user'
// ignore: invalid_annotation_target
  @JsonKey(name: 'User')
  User get user => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  double get avgRating => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorDetailsDtoCopyWith<TutorDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorDetailsDtoCopyWith<$Res> {
  factory $TutorDetailsDtoCopyWith(
          TutorDetailsDto value, $Res Function(TutorDetailsDto) then) =
      _$TutorDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      @JsonKey(name: 'User') User user,
      bool isFavorite,
      double avgRating,
      int price});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TutorDetailsDtoCopyWithImpl<$Res>
    implements $TutorDetailsDtoCopyWith<$Res> {
  _$TutorDetailsDtoCopyWithImpl(this._value, this._then);

  final TutorDetailsDto _value;
  // ignore: unused_field
  final $Res Function(TutorDetailsDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? user = freezed,
    Object? isFavorite = freezed,
    Object? avgRating = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: targetStudent == freezed
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: specialties == freezed
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$TutorDetailsDtoCopyWith<$Res>
    implements $TutorDetailsDtoCopyWith<$Res> {
  factory _$TutorDetailsDtoCopyWith(
          _TutorDetailsDto value, $Res Function(_TutorDetailsDto) then) =
      __$TutorDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String video,
      String bio,
      String education,
      String experience,
      String profession,
      String targetStudent,
      String interests,
      String languages,
      String specialties,
      @JsonKey(name: 'User') User user,
      bool isFavorite,
      double avgRating,
      int price});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$TutorDetailsDtoCopyWithImpl<$Res>
    extends _$TutorDetailsDtoCopyWithImpl<$Res>
    implements _$TutorDetailsDtoCopyWith<$Res> {
  __$TutorDetailsDtoCopyWithImpl(
      _TutorDetailsDto _value, $Res Function(_TutorDetailsDto) _then)
      : super(_value, (v) => _then(v as _TutorDetailsDto));

  @override
  _TutorDetailsDto get _value => super._value as _TutorDetailsDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? video = freezed,
    Object? bio = freezed,
    Object? education = freezed,
    Object? experience = freezed,
    Object? profession = freezed,
    Object? targetStudent = freezed,
    Object? interests = freezed,
    Object? languages = freezed,
    Object? specialties = freezed,
    Object? user = freezed,
    Object? isFavorite = freezed,
    Object? avgRating = freezed,
    Object? price = freezed,
  }) {
    return _then(_TutorDetailsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: targetStudent == freezed
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as String,
      specialties: specialties == freezed
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorDetailsDto extends _TutorDetailsDto {
  const _$_TutorDetailsDto(
      {required this.id,
      required this.userId,
      required this.video,
      required this.bio,
      required this.education,
      required this.experience,
      required this.profession,
      required this.targetStudent,
      required this.interests,
      required this.languages,
      required this.specialties,
      @JsonKey(name: 'User') required this.user,
      required this.isFavorite,
      required this.avgRating,
      required this.price})
      : super._();

  factory _$_TutorDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_TutorDetailsDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String video;
  @override
  final String bio;
  @override
  final String education;
  @override
  final String experience;
  @override
  final String profession;
  @override // dynamic accent,
  final String targetStudent;
  @override
  final String interests;
  @override
  final String languages;
  @override
  final String specialties;
  @override // dynamic resume,
// bool isActivated,
// dynamic isNative,
// DateTime createdAt,
// DateTime updatedAt,
// "stoopid" api returns 'User' instead of 'user'
// ignore: invalid_annotation_target
  @JsonKey(name: 'User')
  final User user;
  @override
  final bool isFavorite;
  @override
  final double avgRating;
  @override
  final int price;

  @override
  String toString() {
    return 'TutorDetailsDto(id: $id, userId: $userId, video: $video, bio: $bio, education: $education, experience: $experience, profession: $profession, targetStudent: $targetStudent, interests: $interests, languages: $languages, specialties: $specialties, user: $user, isFavorite: $isFavorite, avgRating: $avgRating, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorDetailsDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.education, education) &&
            const DeepCollectionEquality()
                .equals(other.experience, experience) &&
            const DeepCollectionEquality()
                .equals(other.profession, profession) &&
            const DeepCollectionEquality()
                .equals(other.targetStudent, targetStudent) &&
            const DeepCollectionEquality().equals(other.interests, interests) &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            const DeepCollectionEquality()
                .equals(other.specialties, specialties) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(education),
      const DeepCollectionEquality().hash(experience),
      const DeepCollectionEquality().hash(profession),
      const DeepCollectionEquality().hash(targetStudent),
      const DeepCollectionEquality().hash(interests),
      const DeepCollectionEquality().hash(languages),
      const DeepCollectionEquality().hash(specialties),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(avgRating),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$TutorDetailsDtoCopyWith<_TutorDetailsDto> get copyWith =>
      __$TutorDetailsDtoCopyWithImpl<_TutorDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorDetailsDtoToJson(this);
  }
}

abstract class _TutorDetailsDto extends TutorDetailsDto {
  const factory _TutorDetailsDto(
      {required String id,
      required String userId,
      required String video,
      required String bio,
      required String education,
      required String experience,
      required String profession,
      required String targetStudent,
      required String interests,
      required String languages,
      required String specialties,
      @JsonKey(name: 'User') required User user,
      required bool isFavorite,
      required double avgRating,
      required int price}) = _$_TutorDetailsDto;
  const _TutorDetailsDto._() : super._();

  factory _TutorDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_TutorDetailsDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get video;
  @override
  String get bio;
  @override
  String get education;
  @override
  String get experience;
  @override
  String get profession;
  @override // dynamic accent,
  String get targetStudent;
  @override
  String get interests;
  @override
  String get languages;
  @override
  String get specialties;
  @override // dynamic resume,
// bool isActivated,
// dynamic isNative,
// DateTime createdAt,
// DateTime updatedAt,
// "stoopid" api returns 'User' instead of 'user'
// ignore: invalid_annotation_target
  @JsonKey(name: 'User')
  User get user;
  @override
  bool get isFavorite;
  @override
  double get avgRating;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$TutorDetailsDtoCopyWith<_TutorDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String level,
      required String email,
      String? avatar,
      required String name,
      required String country,
      required String phone,
      required String language,
      required String birthday,
      required List<FeedbackDto> feedbacks,
      required List<CourseDto> courses}) {
    return _User(
      id: id,
      level: level,
      email: email,
      avatar: avatar,
      name: name,
      country: country,
      phone: phone,
      language: language,
      birthday: birthday,
      feedbacks: feedbacks,
      courses: courses,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError; // String google,
// dynamic facebook,
// dynamic apple,
  String? get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get birthday =>
      throw _privateConstructorUsedError; // bool requestPassword,
// bool isActivated,
// bool isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
// DateTime createdAt,
// DateTime updatedAt,
// dynamic deletedAt,
  List<FeedbackDto> get feedbacks => throw _privateConstructorUsedError;
  List<CourseDto> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String level,
      String email,
      String? avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      List<FeedbackDto> feedbacks,
      List<CourseDto> courses});
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
    Object? level = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? feedbacks = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackDto>,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseDto>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String level,
      String email,
      String? avatar,
      String name,
      String country,
      String phone,
      String language,
      String birthday,
      List<FeedbackDto> feedbacks,
      List<CourseDto> courses});
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
    Object? level = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? phone = freezed,
    Object? language = freezed,
    Object? birthday = freezed,
    Object? feedbacks = freezed,
    Object? courses = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackDto>,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.level,
      required this.email,
      this.avatar,
      required this.name,
      required this.country,
      required this.phone,
      required this.language,
      required this.birthday,
      required this.feedbacks,
      required this.courses});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String level;
  @override
  final String email;
  @override // String google,
// dynamic facebook,
// dynamic apple,
  final String? avatar;
  @override
  final String name;
  @override
  final String country;
  @override
  final String phone;
  @override
  final String language;
  @override
  final String birthday;
  @override // bool requestPassword,
// bool isActivated,
// bool isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
// DateTime createdAt,
// DateTime updatedAt,
// dynamic deletedAt,
  final List<FeedbackDto> feedbacks;
  @override
  final List<CourseDto> courses;

  @override
  String toString() {
    return 'User(id: $id, level: $level, email: $email, avatar: $avatar, name: $name, country: $country, phone: $phone, language: $language, birthday: $birthday, feedbacks: $feedbacks, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.feedbacks, feedbacks) &&
            const DeepCollectionEquality().equals(other.courses, courses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(feedbacks),
      const DeepCollectionEquality().hash(courses));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String id,
      required String level,
      required String email,
      String? avatar,
      required String name,
      required String country,
      required String phone,
      required String language,
      required String birthday,
      required List<FeedbackDto> feedbacks,
      required List<CourseDto> courses}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get level;
  @override
  String get email;
  @override // String google,
// dynamic facebook,
// dynamic apple,
  String? get avatar;
  @override
  String get name;
  @override
  String get country;
  @override
  String get phone;
  @override
  String get language;
  @override
  String get birthday;
  @override // bool requestPassword,
// bool isActivated,
// bool isPhoneActivated,
// dynamic requireNote,
// int timezone,
// dynamic phoneAuth,
// bool isPhoneAuthActivated,
// DateTime createdAt,
// DateTime updatedAt,
// dynamic deletedAt,
  List<FeedbackDto> get feedbacks;
  @override
  List<CourseDto> get courses;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
