// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseCategoryTearOff {
  const _$CourseCategoryTearOff();

  _CourseCategory call({required String id, required String title}) {
    return _CourseCategory(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
const $CourseCategory = _$CourseCategoryTearOff();

/// @nodoc
mixin _$CourseCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCategoryCopyWith<CourseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryCopyWith<$Res> {
  factory $CourseCategoryCopyWith(
          CourseCategory value, $Res Function(CourseCategory) then) =
      _$CourseCategoryCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$CourseCategoryCopyWithImpl<$Res>
    implements $CourseCategoryCopyWith<$Res> {
  _$CourseCategoryCopyWithImpl(this._value, this._then);

  final CourseCategory _value;
  // ignore: unused_field
  final $Res Function(CourseCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourseCategoryCopyWith<$Res>
    implements $CourseCategoryCopyWith<$Res> {
  factory _$CourseCategoryCopyWith(
          _CourseCategory value, $Res Function(_CourseCategory) then) =
      __$CourseCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$CourseCategoryCopyWithImpl<$Res>
    extends _$CourseCategoryCopyWithImpl<$Res>
    implements _$CourseCategoryCopyWith<$Res> {
  __$CourseCategoryCopyWithImpl(
      _CourseCategory _value, $Res Function(_CourseCategory) _then)
      : super(_value, (v) => _then(v as _CourseCategory));

  @override
  _CourseCategory get _value => super._value as _CourseCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_CourseCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CourseCategory extends _CourseCategory {
  const _$_CourseCategory({required this.id, required this.title}) : super._();

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'CourseCategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$CourseCategoryCopyWith<_CourseCategory> get copyWith =>
      __$CourseCategoryCopyWithImpl<_CourseCategory>(this, _$identity);
}

abstract class _CourseCategory extends CourseCategory {
  const factory _CourseCategory({required String id, required String title}) =
      _$_CourseCategory;
  const _CourseCategory._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$CourseCategoryCopyWith<_CourseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
