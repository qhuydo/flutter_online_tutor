// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tutor _$TutorFromJson(Map<String, dynamic> json) {
  return _Tutor.fromJson(json);
}

/// @nodoc
class _$TutorTearOff {
  const _$TutorTearOff();

  _Tutor call(
      {required String id,
      String? avatar,
      required String bio,
      required Country country,
      required String education,
      required double averageRating,
      List<Feedback> feedbacks = const [],
      required String interests,
      required bool isFavourite,
      required bool? isOnline,
      List<Language> languages = const [],
      required String name,
      required double price,
      required String profession,
      List<Speciality> specialities = const [],
      required Level targetStudent,
      required String video}) {
    return _Tutor(
      id: id,
      avatar: avatar,
      bio: bio,
      country: country,
      education: education,
      averageRating: averageRating,
      feedbacks: feedbacks,
      interests: interests,
      isFavourite: isFavourite,
      isOnline: isOnline,
      languages: languages,
      name: name,
      price: price,
      profession: profession,
      specialities: specialities,
      targetStudent: targetStudent,
      video: video,
    );
  }

  Tutor fromJson(Map<String, Object?> json) {
    return Tutor.fromJson(json);
  }
}

/// @nodoc
const $Tutor = _$TutorTearOff();

/// @nodoc
mixin _$Tutor {
  String get id => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  double get averageRating =>
      throw _privateConstructorUsedError; // @Default([]) List<Course> courses,
  List<Feedback> get feedbacks => throw _privateConstructorUsedError;
  String get interests => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  List<Language> get languages => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  List<Speciality> get specialities => throw _privateConstructorUsedError;
  Level get targetStudent => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorCopyWith<Tutor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorCopyWith<$Res> {
  factory $TutorCopyWith(Tutor value, $Res Function(Tutor) then) =
      _$TutorCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? avatar,
      String bio,
      Country country,
      String education,
      double averageRating,
      List<Feedback> feedbacks,
      String interests,
      bool isFavourite,
      bool? isOnline,
      List<Language> languages,
      String name,
      double price,
      String profession,
      List<Speciality> specialities,
      Level targetStudent,
      String video});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$TutorCopyWithImpl<$Res> implements $TutorCopyWith<$Res> {
  _$TutorCopyWithImpl(this._value, this._then);

  final Tutor _value;
  // ignore: unused_field
  final $Res Function(Tutor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? country = freezed,
    Object? education = freezed,
    Object? averageRating = freezed,
    Object? feedbacks = freezed,
    Object? interests = freezed,
    Object? isFavourite = freezed,
    Object? isOnline = freezed,
    Object? languages = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? profession = freezed,
    Object? specialities = freezed,
    Object? targetStudent = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      targetStudent: targetStudent == freezed
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as Level,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$TutorCopyWith<$Res> implements $TutorCopyWith<$Res> {
  factory _$TutorCopyWith(_Tutor value, $Res Function(_Tutor) then) =
      __$TutorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? avatar,
      String bio,
      Country country,
      String education,
      double averageRating,
      List<Feedback> feedbacks,
      String interests,
      bool isFavourite,
      bool? isOnline,
      List<Language> languages,
      String name,
      double price,
      String profession,
      List<Speciality> specialities,
      Level targetStudent,
      String video});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$TutorCopyWithImpl<$Res> extends _$TutorCopyWithImpl<$Res>
    implements _$TutorCopyWith<$Res> {
  __$TutorCopyWithImpl(_Tutor _value, $Res Function(_Tutor) _then)
      : super(_value, (v) => _then(v as _Tutor));

  @override
  _Tutor get _value => super._value as _Tutor;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? country = freezed,
    Object? education = freezed,
    Object? averageRating = freezed,
    Object? feedbacks = freezed,
    Object? interests = freezed,
    Object? isFavourite = freezed,
    Object? isOnline = freezed,
    Object? languages = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? profession = freezed,
    Object? specialities = freezed,
    Object? targetStudent = freezed,
    Object? video = freezed,
  }) {
    return _then(_Tutor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      feedbacks: feedbacks == freezed
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>,
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      targetStudent: targetStudent == freezed
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as Level,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutor extends _Tutor {
  const _$_Tutor(
      {required this.id,
      this.avatar,
      required this.bio,
      required this.country,
      required this.education,
      required this.averageRating,
      this.feedbacks = const [],
      required this.interests,
      required this.isFavourite,
      required this.isOnline,
      this.languages = const [],
      required this.name,
      required this.price,
      required this.profession,
      this.specialities = const [],
      required this.targetStudent,
      required this.video})
      : super._();

  factory _$_Tutor.fromJson(Map<String, dynamic> json) =>
      _$$_TutorFromJson(json);

  @override
  final String id;
  @override
  final String? avatar;
  @override
  final String bio;
  @override
  final Country country;
  @override
  final String education;
  @override
  final double averageRating;
  @JsonKey()
  @override // @Default([]) List<Course> courses,
  final List<Feedback> feedbacks;
  @override
  final String interests;
  @override
  final bool isFavourite;
  @override
  final bool? isOnline;
  @JsonKey()
  @override
  final List<Language> languages;
  @override
  final String name;
  @override
  final double price;
  @override
  final String profession;
  @JsonKey()
  @override
  final List<Speciality> specialities;
  @override
  final Level targetStudent;
  @override
  final String video;

  @override
  String toString() {
    return 'Tutor(id: $id, avatar: $avatar, bio: $bio, country: $country, education: $education, averageRating: $averageRating, feedbacks: $feedbacks, interests: $interests, isFavourite: $isFavourite, isOnline: $isOnline, languages: $languages, name: $name, price: $price, profession: $profession, specialities: $specialities, targetStudent: $targetStudent, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tutor &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.education, education) &&
            const DeepCollectionEquality()
                .equals(other.averageRating, averageRating) &&
            const DeepCollectionEquality().equals(other.feedbacks, feedbacks) &&
            const DeepCollectionEquality().equals(other.interests, interests) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.languages, languages) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.profession, profession) &&
            const DeepCollectionEquality()
                .equals(other.specialities, specialities) &&
            const DeepCollectionEquality()
                .equals(other.targetStudent, targetStudent) &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(education),
      const DeepCollectionEquality().hash(averageRating),
      const DeepCollectionEquality().hash(feedbacks),
      const DeepCollectionEquality().hash(interests),
      const DeepCollectionEquality().hash(isFavourite),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(languages),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(profession),
      const DeepCollectionEquality().hash(specialities),
      const DeepCollectionEquality().hash(targetStudent),
      const DeepCollectionEquality().hash(video));

  @JsonKey(ignore: true)
  @override
  _$TutorCopyWith<_Tutor> get copyWith =>
      __$TutorCopyWithImpl<_Tutor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorToJson(this);
  }
}

abstract class _Tutor extends Tutor {
  const factory _Tutor(
      {required String id,
      String? avatar,
      required String bio,
      required Country country,
      required String education,
      required double averageRating,
      List<Feedback> feedbacks,
      required String interests,
      required bool isFavourite,
      required bool? isOnline,
      List<Language> languages,
      required String name,
      required double price,
      required String profession,
      List<Speciality> specialities,
      required Level targetStudent,
      required String video}) = _$_Tutor;
  const _Tutor._() : super._();

  factory _Tutor.fromJson(Map<String, dynamic> json) = _$_Tutor.fromJson;

  @override
  String get id;
  @override
  String? get avatar;
  @override
  String get bio;
  @override
  Country get country;
  @override
  String get education;
  @override
  double get averageRating;
  @override // @Default([]) List<Course> courses,
  List<Feedback> get feedbacks;
  @override
  String get interests;
  @override
  bool get isFavourite;
  @override
  bool? get isOnline;
  @override
  List<Language> get languages;
  @override
  String get name;
  @override
  double get price;
  @override
  String get profession;
  @override
  List<Speciality> get specialities;
  @override
  Level get targetStudent;
  @override
  String get video;
  @override
  @JsonKey(ignore: true)
  _$TutorCopyWith<_Tutor> get copyWith => throw _privateConstructorUsedError;
}
