// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_tutors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchTutorsEventTearOff {
  const _$SearchTutorsEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }

  _KeywordChanged keywordChanged(String keyword) {
    return _KeywordChanged(
      keyword,
    );
  }

  _PageChanged pageChanged(int page) {
    return _PageChanged(
      page,
    );
  }

  _PageLimitChanged pageLimitChanged(int page) {
    return _PageLimitChanged(
      page,
    );
  }

  _CountryChanged countryChanged(Country? country) {
    return _CountryChanged(
      country,
    );
  }

  _SpecialitiesChanged specialitiesChanged(List<Speciality> specialities) {
    return _SpecialitiesChanged(
      specialities,
    );
  }

  _SortOptionChanged sortOptionChanged(TutorSortBy sortOption) {
    return _SortOptionChanged(
      sortOption,
    );
  }

  _SearchOptionCleared searchOptionCleared() {
    return const _SearchOptionCleared();
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $SearchTutorsEvent = _$SearchTutorsEventTearOff();

/// @nodoc
mixin _$SearchTutorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTutorsEventCopyWith<$Res> {
  factory $SearchTutorsEventCopyWith(
          SearchTutorsEvent value, $Res Function(SearchTutorsEvent) then) =
      _$SearchTutorsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTutorsEventCopyWithImpl<$Res>
    implements $SearchTutorsEventCopyWith<$Res> {
  _$SearchTutorsEventCopyWithImpl(this._value, this._then);

  final SearchTutorsEvent _value;
  // ignore: unused_field
  final $Res Function(SearchTutorsEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise();

  @override
  String toString() {
    return 'SearchTutorsEvent.initialise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements SearchTutorsEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
abstract class _$KeywordChangedCopyWith<$Res> {
  factory _$KeywordChangedCopyWith(
          _KeywordChanged value, $Res Function(_KeywordChanged) then) =
      __$KeywordChangedCopyWithImpl<$Res>;
  $Res call({String keyword});
}

/// @nodoc
class __$KeywordChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$KeywordChangedCopyWith<$Res> {
  __$KeywordChangedCopyWithImpl(
      _KeywordChanged _value, $Res Function(_KeywordChanged) _then)
      : super(_value, (v) => _then(v as _KeywordChanged));

  @override
  _KeywordChanged get _value => super._value as _KeywordChanged;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_KeywordChanged(
      keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KeywordChanged implements _KeywordChanged {
  const _$_KeywordChanged(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchTutorsEvent.keywordChanged(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeywordChanged &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith =>
      __$KeywordChangedCopyWithImpl<_KeywordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return keywordChanged(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return keywordChanged?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (keywordChanged != null) {
      return keywordChanged(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return keywordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return keywordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (keywordChanged != null) {
      return keywordChanged(this);
    }
    return orElse();
  }
}

abstract class _KeywordChanged implements SearchTutorsEvent {
  const factory _KeywordChanged(String keyword) = _$_KeywordChanged;

  String get keyword;
  @JsonKey(ignore: true)
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageChangedCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) then) =
      __$PageChangedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(
      _PageChanged _value, $Res Function(_PageChanged) _then)
      : super(_value, (v) => _then(v as _PageChanged));

  @override
  _PageChanged get _value => super._value as _PageChanged;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_PageChanged(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageChanged implements _PageChanged {
  const _$_PageChanged(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'SearchTutorsEvent.pageChanged(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageChanged &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return pageChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return pageChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements SearchTutorsEvent {
  const factory _PageChanged(int page) = _$_PageChanged;

  int get page;
  @JsonKey(ignore: true)
  _$PageChangedCopyWith<_PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PageLimitChangedCopyWith<$Res> {
  factory _$PageLimitChangedCopyWith(
          _PageLimitChanged value, $Res Function(_PageLimitChanged) then) =
      __$PageLimitChangedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$PageLimitChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$PageLimitChangedCopyWith<$Res> {
  __$PageLimitChangedCopyWithImpl(
      _PageLimitChanged _value, $Res Function(_PageLimitChanged) _then)
      : super(_value, (v) => _then(v as _PageLimitChanged));

  @override
  _PageLimitChanged get _value => super._value as _PageLimitChanged;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_PageLimitChanged(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageLimitChanged implements _PageLimitChanged {
  const _$_PageLimitChanged(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'SearchTutorsEvent.pageLimitChanged(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageLimitChanged &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$PageLimitChangedCopyWith<_PageLimitChanged> get copyWith =>
      __$PageLimitChangedCopyWithImpl<_PageLimitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return pageLimitChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return pageLimitChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (pageLimitChanged != null) {
      return pageLimitChanged(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return pageLimitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return pageLimitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (pageLimitChanged != null) {
      return pageLimitChanged(this);
    }
    return orElse();
  }
}

abstract class _PageLimitChanged implements SearchTutorsEvent {
  const factory _PageLimitChanged(int page) = _$_PageLimitChanged;

  int get page;
  @JsonKey(ignore: true)
  _$PageLimitChangedCopyWith<_PageLimitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CountryChangedCopyWith<$Res> {
  factory _$CountryChangedCopyWith(
          _CountryChanged value, $Res Function(_CountryChanged) then) =
      __$CountryChangedCopyWithImpl<$Res>;
  $Res call({Country? country});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$CountryChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$CountryChangedCopyWith<$Res> {
  __$CountryChangedCopyWithImpl(
      _CountryChanged _value, $Res Function(_CountryChanged) _then)
      : super(_value, (v) => _then(v as _CountryChanged));

  @override
  _CountryChanged get _value => super._value as _CountryChanged;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_CountryChanged(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
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

class _$_CountryChanged implements _CountryChanged {
  const _$_CountryChanged(this.country);

  @override
  final Country? country;

  @override
  String toString() {
    return 'SearchTutorsEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryChanged &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$CountryChangedCopyWith<_CountryChanged> get copyWith =>
      __$CountryChangedCopyWithImpl<_CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return countryChanged?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return countryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryChanged implements SearchTutorsEvent {
  const factory _CountryChanged(Country? country) = _$_CountryChanged;

  Country? get country;
  @JsonKey(ignore: true)
  _$CountryChangedCopyWith<_CountryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SpecialitiesChangedCopyWith<$Res> {
  factory _$SpecialitiesChangedCopyWith(_SpecialitiesChanged value,
          $Res Function(_SpecialitiesChanged) then) =
      __$SpecialitiesChangedCopyWithImpl<$Res>;
  $Res call({List<Speciality> specialities});
}

/// @nodoc
class __$SpecialitiesChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$SpecialitiesChangedCopyWith<$Res> {
  __$SpecialitiesChangedCopyWithImpl(
      _SpecialitiesChanged _value, $Res Function(_SpecialitiesChanged) _then)
      : super(_value, (v) => _then(v as _SpecialitiesChanged));

  @override
  _SpecialitiesChanged get _value => super._value as _SpecialitiesChanged;

  @override
  $Res call({
    Object? specialities = freezed,
  }) {
    return _then(_SpecialitiesChanged(
      specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
    ));
  }
}

/// @nodoc

class _$_SpecialitiesChanged implements _SpecialitiesChanged {
  const _$_SpecialitiesChanged(this.specialities);

  @override
  final List<Speciality> specialities;

  @override
  String toString() {
    return 'SearchTutorsEvent.specialitiesChanged(specialities: $specialities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecialitiesChanged &&
            const DeepCollectionEquality()
                .equals(other.specialities, specialities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(specialities));

  @JsonKey(ignore: true)
  @override
  _$SpecialitiesChangedCopyWith<_SpecialitiesChanged> get copyWith =>
      __$SpecialitiesChangedCopyWithImpl<_SpecialitiesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return specialitiesChanged(specialities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return specialitiesChanged?.call(specialities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (specialitiesChanged != null) {
      return specialitiesChanged(specialities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return specialitiesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return specialitiesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (specialitiesChanged != null) {
      return specialitiesChanged(this);
    }
    return orElse();
  }
}

abstract class _SpecialitiesChanged implements SearchTutorsEvent {
  const factory _SpecialitiesChanged(List<Speciality> specialities) =
      _$_SpecialitiesChanged;

  List<Speciality> get specialities;
  @JsonKey(ignore: true)
  _$SpecialitiesChangedCopyWith<_SpecialitiesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SortOptionChangedCopyWith<$Res> {
  factory _$SortOptionChangedCopyWith(
          _SortOptionChanged value, $Res Function(_SortOptionChanged) then) =
      __$SortOptionChangedCopyWithImpl<$Res>;
  $Res call({TutorSortBy sortOption});
}

/// @nodoc
class __$SortOptionChangedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$SortOptionChangedCopyWith<$Res> {
  __$SortOptionChangedCopyWithImpl(
      _SortOptionChanged _value, $Res Function(_SortOptionChanged) _then)
      : super(_value, (v) => _then(v as _SortOptionChanged));

  @override
  _SortOptionChanged get _value => super._value as _SortOptionChanged;

  @override
  $Res call({
    Object? sortOption = freezed,
  }) {
    return _then(_SortOptionChanged(
      sortOption == freezed
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TutorSortBy,
    ));
  }
}

/// @nodoc

class _$_SortOptionChanged implements _SortOptionChanged {
  const _$_SortOptionChanged(this.sortOption);

  @override
  final TutorSortBy sortOption;

  @override
  String toString() {
    return 'SearchTutorsEvent.sortOptionChanged(sortOption: $sortOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SortOptionChanged &&
            const DeepCollectionEquality()
                .equals(other.sortOption, sortOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sortOption));

  @JsonKey(ignore: true)
  @override
  _$SortOptionChangedCopyWith<_SortOptionChanged> get copyWith =>
      __$SortOptionChangedCopyWithImpl<_SortOptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return sortOptionChanged(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return sortOptionChanged?.call(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (sortOptionChanged != null) {
      return sortOptionChanged(sortOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return sortOptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return sortOptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (sortOptionChanged != null) {
      return sortOptionChanged(this);
    }
    return orElse();
  }
}

abstract class _SortOptionChanged implements SearchTutorsEvent {
  const factory _SortOptionChanged(TutorSortBy sortOption) =
      _$_SortOptionChanged;

  TutorSortBy get sortOption;
  @JsonKey(ignore: true)
  _$SortOptionChangedCopyWith<_SortOptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchOptionClearedCopyWith<$Res> {
  factory _$SearchOptionClearedCopyWith(_SearchOptionCleared value,
          $Res Function(_SearchOptionCleared) then) =
      __$SearchOptionClearedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchOptionClearedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$SearchOptionClearedCopyWith<$Res> {
  __$SearchOptionClearedCopyWithImpl(
      _SearchOptionCleared _value, $Res Function(_SearchOptionCleared) _then)
      : super(_value, (v) => _then(v as _SearchOptionCleared));

  @override
  _SearchOptionCleared get _value => super._value as _SearchOptionCleared;
}

/// @nodoc

class _$_SearchOptionCleared implements _SearchOptionCleared {
  const _$_SearchOptionCleared();

  @override
  String toString() {
    return 'SearchTutorsEvent.searchOptionCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchOptionCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return searchOptionCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return searchOptionCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (searchOptionCleared != null) {
      return searchOptionCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return searchOptionCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return searchOptionCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (searchOptionCleared != null) {
      return searchOptionCleared(this);
    }
    return orElse();
  }
}

abstract class _SearchOptionCleared implements SearchTutorsEvent {
  const factory _SearchOptionCleared() = _$_SearchOptionCleared;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$SearchTutorsEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'SearchTutorsEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int page) pageLimitChanged,
    required TResult Function(Country? country) countryChanged,
    required TResult Function(List<Speciality> specialities)
        specialitiesChanged,
    required TResult Function(TutorSortBy sortOption) sortOptionChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int page)? pageLimitChanged,
    TResult Function(Country? country)? countryChanged,
    TResult Function(List<Speciality> specialities)? specialitiesChanged,
    TResult Function(TutorSortBy sortOption)? sortOptionChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_KeywordChanged value) keywordChanged,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
    required TResult Function(_CountryChanged value) countryChanged,
    required TResult Function(_SpecialitiesChanged value) specialitiesChanged,
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_CountryChanged value)? countryChanged,
    TResult Function(_SpecialitiesChanged value)? specialitiesChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchTutorsEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$SearchTutorsStateTearOff {
  const _$SearchTutorsStateTearOff();

  _SearchTutorsState call(
      {bool isLoading = false,
      String keyword = '',
      int currentPage = 1,
      int limit = 20,
      Country? country,
      List<Speciality> specialities = const [],
      TutorSortBy sortOption = TutorSortBy.defaultSort,
      Either<Failure, List<Tutor>> result = const Right([]),
      List<Speciality> allSpecialities = const []}) {
    return _SearchTutorsState(
      isLoading: isLoading,
      keyword: keyword,
      currentPage: currentPage,
      limit: limit,
      country: country,
      specialities: specialities,
      sortOption: sortOption,
      result: result,
      allSpecialities: allSpecialities,
    );
  }
}

/// @nodoc
const $SearchTutorsState = _$SearchTutorsStateTearOff();

/// @nodoc
mixin _$SearchTutorsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  List<Speciality> get specialities => throw _privateConstructorUsedError;
  TutorSortBy get sortOption => throw _privateConstructorUsedError;
  Either<Failure, List<Tutor>> get result => throw _privateConstructorUsedError;
  List<Speciality> get allSpecialities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTutorsStateCopyWith<SearchTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTutorsStateCopyWith<$Res> {
  factory $SearchTutorsStateCopyWith(
          SearchTutorsState value, $Res Function(SearchTutorsState) then) =
      _$SearchTutorsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String keyword,
      int currentPage,
      int limit,
      Country? country,
      List<Speciality> specialities,
      TutorSortBy sortOption,
      Either<Failure, List<Tutor>> result,
      List<Speciality> allSpecialities});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$SearchTutorsStateCopyWithImpl<$Res>
    implements $SearchTutorsStateCopyWith<$Res> {
  _$SearchTutorsStateCopyWithImpl(this._value, this._then);

  final SearchTutorsState _value;
  // ignore: unused_field
  final $Res Function(SearchTutorsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? keyword = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? country = freezed,
    Object? specialities = freezed,
    Object? sortOption = freezed,
    Object? result = freezed,
    Object? allSpecialities = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      sortOption: sortOption == freezed
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TutorSortBy,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Tutor>>,
      allSpecialities: allSpecialities == freezed
          ? _value.allSpecialities
          : allSpecialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
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
abstract class _$SearchTutorsStateCopyWith<$Res>
    implements $SearchTutorsStateCopyWith<$Res> {
  factory _$SearchTutorsStateCopyWith(
          _SearchTutorsState value, $Res Function(_SearchTutorsState) then) =
      __$SearchTutorsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String keyword,
      int currentPage,
      int limit,
      Country? country,
      List<Speciality> specialities,
      TutorSortBy sortOption,
      Either<Failure, List<Tutor>> result,
      List<Speciality> allSpecialities});

  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$SearchTutorsStateCopyWithImpl<$Res>
    extends _$SearchTutorsStateCopyWithImpl<$Res>
    implements _$SearchTutorsStateCopyWith<$Res> {
  __$SearchTutorsStateCopyWithImpl(
      _SearchTutorsState _value, $Res Function(_SearchTutorsState) _then)
      : super(_value, (v) => _then(v as _SearchTutorsState));

  @override
  _SearchTutorsState get _value => super._value as _SearchTutorsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? keyword = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? country = freezed,
    Object? specialities = freezed,
    Object? sortOption = freezed,
    Object? result = freezed,
    Object? allSpecialities = freezed,
  }) {
    return _then(_SearchTutorsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      sortOption: sortOption == freezed
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as TutorSortBy,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Tutor>>,
      allSpecialities: allSpecialities == freezed
          ? _value.allSpecialities
          : allSpecialities // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
    ));
  }
}

/// @nodoc

class _$_SearchTutorsState implements _SearchTutorsState {
  const _$_SearchTutorsState(
      {this.isLoading = false,
      this.keyword = '',
      this.currentPage = 1,
      this.limit = 20,
      this.country,
      this.specialities = const [],
      this.sortOption = TutorSortBy.defaultSort,
      this.result = const Right([]),
      this.allSpecialities = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final String keyword;
  @JsonKey()
  @override
  final int currentPage;
  @JsonKey()
  @override
  final int limit;
  @override
  final Country? country;
  @JsonKey()
  @override
  final List<Speciality> specialities;
  @JsonKey()
  @override
  final TutorSortBy sortOption;
  @JsonKey()
  @override
  final Either<Failure, List<Tutor>> result;
  @JsonKey()
  @override
  final List<Speciality> allSpecialities;

  @override
  String toString() {
    return 'SearchTutorsState(isLoading: $isLoading, keyword: $keyword, currentPage: $currentPage, limit: $limit, country: $country, specialities: $specialities, sortOption: $sortOption, result: $result, allSpecialities: $allSpecialities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchTutorsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.specialities, specialities) &&
            const DeepCollectionEquality()
                .equals(other.sortOption, sortOption) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.allSpecialities, allSpecialities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(specialities),
      const DeepCollectionEquality().hash(sortOption),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(allSpecialities));

  @JsonKey(ignore: true)
  @override
  _$SearchTutorsStateCopyWith<_SearchTutorsState> get copyWith =>
      __$SearchTutorsStateCopyWithImpl<_SearchTutorsState>(this, _$identity);
}

abstract class _SearchTutorsState implements SearchTutorsState {
  const factory _SearchTutorsState(
      {bool isLoading,
      String keyword,
      int currentPage,
      int limit,
      Country? country,
      List<Speciality> specialities,
      TutorSortBy sortOption,
      Either<Failure, List<Tutor>> result,
      List<Speciality> allSpecialities}) = _$_SearchTutorsState;

  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  int get currentPage;
  @override
  int get limit;
  @override
  Country? get country;
  @override
  List<Speciality> get specialities;
  @override
  TutorSortBy get sortOption;
  @override
  Either<Failure, List<Tutor>> get result;
  @override
  List<Speciality> get allSpecialities;
  @override
  @JsonKey(ignore: true)
  _$SearchTutorsStateCopyWith<_SearchTutorsState> get copyWith =>
      throw _privateConstructorUsedError;
}
