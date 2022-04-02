// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EbookTearOff {
  const _$EbookTearOff();

  _Ebook call(
      {required String id,
      required String name,
      required String description,
      required Level level,
      required String fileUrl,
      String? imageUrl}) {
    return _Ebook(
      id: id,
      name: name,
      description: description,
      level: level,
      fileUrl: fileUrl,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $Ebook = _$EbookTearOff();

/// @nodoc
mixin _$Ebook {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Level get level => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EbookCopyWith<Ebook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookCopyWith<$Res> {
  factory $EbookCopyWith(Ebook value, $Res Function(Ebook) then) =
      _$EbookCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      Level level,
      String fileUrl,
      String? imageUrl});
}

/// @nodoc
class _$EbookCopyWithImpl<$Res> implements $EbookCopyWith<$Res> {
  _$EbookCopyWithImpl(this._value, this._then);

  final Ebook _value;
  // ignore: unused_field
  final $Res Function(Ebook) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? fileUrl = freezed,
    Object? imageUrl = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EbookCopyWith<$Res> implements $EbookCopyWith<$Res> {
  factory _$EbookCopyWith(_Ebook value, $Res Function(_Ebook) then) =
      __$EbookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      Level level,
      String fileUrl,
      String? imageUrl});
}

/// @nodoc
class __$EbookCopyWithImpl<$Res> extends _$EbookCopyWithImpl<$Res>
    implements _$EbookCopyWith<$Res> {
  __$EbookCopyWithImpl(_Ebook _value, $Res Function(_Ebook) _then)
      : super(_value, (v) => _then(v as _Ebook));

  @override
  _Ebook get _value => super._value as _Ebook;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? level = freezed,
    Object? fileUrl = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Ebook(
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Ebook implements _Ebook {
  const _$_Ebook(
      {required this.id,
      required this.name,
      required this.description,
      required this.level,
      required this.fileUrl,
      this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Level level;
  @override
  final String fileUrl;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'Ebook(id: $id, name: $name, description: $description, level: $level, fileUrl: $fileUrl, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ebook &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(fileUrl),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$EbookCopyWith<_Ebook> get copyWith =>
      __$EbookCopyWithImpl<_Ebook>(this, _$identity);
}

abstract class _Ebook implements Ebook {
  const factory _Ebook(
      {required String id,
      required String name,
      required String description,
      required Level level,
      required String fileUrl,
      String? imageUrl}) = _$_Ebook;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Level get level;
  @override
  String get fileUrl;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$EbookCopyWith<_Ebook> get copyWith => throw _privateConstructorUsedError;
}
