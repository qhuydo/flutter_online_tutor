// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EbookDto _$EbookDtoFromJson(Map<String, dynamic> json) {
  return _EbookDto.fromJson(json);
}

/// @nodoc
class _$EbookDtoTearOff {
  const _$EbookDtoTearOff();

  _EbookDto call(
      {required String id,
      required String name,
      String? imageUrl,
      String? description,
      required String level,
      required String fileUrl}) {
    return _EbookDto(
      id: id,
      name: name,
      imageUrl: imageUrl,
      description: description,
      level: level,
      fileUrl: fileUrl,
    );
  }

  EbookDto fromJson(Map<String, Object?> json) {
    return EbookDto.fromJson(json);
  }
}

/// @nodoc
const $EbookDto = _$EbookDtoTearOff();

/// @nodoc
mixin _$EbookDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EbookDtoCopyWith<EbookDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookDtoCopyWith<$Res> {
  factory $EbookDtoCopyWith(EbookDto value, $Res Function(EbookDto) then) =
      _$EbookDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? imageUrl,
      String? description,
      String level,
      String fileUrl});
}

/// @nodoc
class _$EbookDtoCopyWithImpl<$Res> implements $EbookDtoCopyWith<$Res> {
  _$EbookDtoCopyWithImpl(this._value, this._then);

  final EbookDto _value;
  // ignore: unused_field
  final $Res Function(EbookDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? fileUrl = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EbookDtoCopyWith<$Res> implements $EbookDtoCopyWith<$Res> {
  factory _$EbookDtoCopyWith(_EbookDto value, $Res Function(_EbookDto) then) =
      __$EbookDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? imageUrl,
      String? description,
      String level,
      String fileUrl});
}

/// @nodoc
class __$EbookDtoCopyWithImpl<$Res> extends _$EbookDtoCopyWithImpl<$Res>
    implements _$EbookDtoCopyWith<$Res> {
  __$EbookDtoCopyWithImpl(_EbookDto _value, $Res Function(_EbookDto) _then)
      : super(_value, (v) => _then(v as _EbookDto));

  @override
  _EbookDto get _value => super._value as _EbookDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_EbookDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EbookDto implements _EbookDto {
  const _$_EbookDto(
      {required this.id,
      required this.name,
      this.imageUrl,
      this.description,
      required this.level,
      required this.fileUrl});

  factory _$_EbookDto.fromJson(Map<String, dynamic> json) =>
      _$$_EbookDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;
  @override
  final String? description;
  @override
  final String level;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'EbookDto(id: $id, name: $name, imageUrl: $imageUrl, description: $description, level: $level, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EbookDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(fileUrl));

  @JsonKey(ignore: true)
  @override
  _$EbookDtoCopyWith<_EbookDto> get copyWith =>
      __$EbookDtoCopyWithImpl<_EbookDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EbookDtoToJson(this);
  }
}

abstract class _EbookDto implements EbookDto {
  const factory _EbookDto(
      {required String id,
      required String name,
      String? imageUrl,
      String? description,
      required String level,
      required String fileUrl}) = _$_EbookDto;

  factory _EbookDto.fromJson(Map<String, dynamic> json) = _$_EbookDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  String? get description;
  @override
  String get level;
  @override
  String get fileUrl;
  @override
  @JsonKey(ignore: true)
  _$EbookDtoCopyWith<_EbookDto> get copyWith =>
      throw _privateConstructorUsedError;
}
