// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) {
  return _CourseDto.fromJson(json);
}

/// @nodoc
class _$CourseDtoTearOff {
  const _$CourseDtoTearOff();

  _CourseDto call(
      {required String id,
      required String name,
      required String description,
      required String imageUrl,
      required String level,
      required String reason,
      required String purpose,
      String? courseType,
      String? sectionType,
      required bool visible,
      required String createdAt,
      required String updatedAt,
      List<TopicDto> topics = const [],
      List<CategoryDto>? categories}) {
    return _CourseDto(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      level: level,
      reason: reason,
      purpose: purpose,
      courseType: courseType,
      sectionType: sectionType,
      visible: visible,
      createdAt: createdAt,
      updatedAt: updatedAt,
      topics: topics,
      categories: categories,
    );
  }

  CourseDto fromJson(Map<String, Object?> json) {
    return CourseDto.fromJson(json);
  }
}

/// @nodoc
const $CourseDto = _$CourseDtoTearOff();

/// @nodoc
mixin _$CourseDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get purpose =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'other_details') required String otherDetails,
// @JsonKey(name: 'default_price') required int defaultPrice,
// @JsonKey(name: 'course_price') required int coursePrice,
  String? get courseType => throw _privateConstructorUsedError;
  String? get sectionType => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<TopicDto> get topics => throw _privateConstructorUsedError;
  List<CategoryDto>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDtoCopyWith<CourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDtoCopyWith<$Res> {
  factory $CourseDtoCopyWith(CourseDto value, $Res Function(CourseDto) then) =
      _$CourseDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String? courseType,
      String? sectionType,
      bool visible,
      String createdAt,
      String updatedAt,
      List<TopicDto> topics,
      List<CategoryDto>? categories});
}

/// @nodoc
class _$CourseDtoCopyWithImpl<$Res> implements $CourseDtoCopyWith<$Res> {
  _$CourseDtoCopyWithImpl(this._value, this._then);

  final CourseDto _value;
  // ignore: unused_field
  final $Res Function(CourseDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      courseType: courseType == freezed
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: sectionType == freezed
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicDto>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
    ));
  }
}

/// @nodoc
abstract class _$CourseDtoCopyWith<$Res> implements $CourseDtoCopyWith<$Res> {
  factory _$CourseDtoCopyWith(
          _CourseDto value, $Res Function(_CourseDto) then) =
      __$CourseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String? courseType,
      String? sectionType,
      bool visible,
      String createdAt,
      String updatedAt,
      List<TopicDto> topics,
      List<CategoryDto>? categories});
}

/// @nodoc
class __$CourseDtoCopyWithImpl<$Res> extends _$CourseDtoCopyWithImpl<$Res>
    implements _$CourseDtoCopyWith<$Res> {
  __$CourseDtoCopyWithImpl(_CourseDto _value, $Res Function(_CourseDto) _then)
      : super(_value, (v) => _then(v as _CourseDto));

  @override
  _CourseDto get _value => super._value as _CourseDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? level = freezed,
    Object? reason = freezed,
    Object? purpose = freezed,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = freezed,
    Object? categories = freezed,
  }) {
    return _then(_CourseDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      courseType: courseType == freezed
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: sectionType == freezed
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicDto>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDto implements _CourseDto {
  const _$_CourseDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.level,
      required this.reason,
      required this.purpose,
      this.courseType,
      this.sectionType,
      required this.visible,
      required this.createdAt,
      required this.updatedAt,
      this.topics = const [],
      this.categories});

  factory _$_CourseDto.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String level;
  @override
  final String reason;
  @override
  final String purpose;
  @override // @JsonKey(name: 'other_details') required String otherDetails,
// @JsonKey(name: 'default_price') required int defaultPrice,
// @JsonKey(name: 'course_price') required int coursePrice,
  final String? courseType;
  @override
  final String? sectionType;
  @override
  final bool visible;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @JsonKey()
  @override
  final List<TopicDto> topics;
  @override
  final List<CategoryDto>? categories;

  @override
  String toString() {
    return 'CourseDto(id: $id, name: $name, description: $description, imageUrl: $imageUrl, level: $level, reason: $reason, purpose: $purpose, courseType: $courseType, sectionType: $sectionType, visible: $visible, createdAt: $createdAt, updatedAt: $updatedAt, topics: $topics, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            const DeepCollectionEquality()
                .equals(other.courseType, courseType) &&
            const DeepCollectionEquality()
                .equals(other.sectionType, sectionType) &&
            const DeepCollectionEquality().equals(other.visible, visible) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.topics, topics) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(purpose),
      const DeepCollectionEquality().hash(courseType),
      const DeepCollectionEquality().hash(sectionType),
      const DeepCollectionEquality().hash(visible),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(topics),
      const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$CourseDtoCopyWith<_CourseDto> get copyWith =>
      __$CourseDtoCopyWithImpl<_CourseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDtoToJson(this);
  }
}

abstract class _CourseDto implements CourseDto {
  const factory _CourseDto(
      {required String id,
      required String name,
      required String description,
      required String imageUrl,
      required String level,
      required String reason,
      required String purpose,
      String? courseType,
      String? sectionType,
      required bool visible,
      required String createdAt,
      required String updatedAt,
      List<TopicDto> topics,
      List<CategoryDto>? categories}) = _$_CourseDto;

  factory _CourseDto.fromJson(Map<String, dynamic> json) =
      _$_CourseDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get level;
  @override
  String get reason;
  @override
  String get purpose;
  @override // @JsonKey(name: 'other_details') required String otherDetails,
// @JsonKey(name: 'default_price') required int defaultPrice,
// @JsonKey(name: 'course_price') required int coursePrice,
  String? get courseType;
  @override
  String? get sectionType;
  @override
  bool get visible;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<TopicDto> get topics;
  @override
  List<CategoryDto>? get categories;
  @override
  @JsonKey(ignore: true)
  _$CourseDtoCopyWith<_CourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
