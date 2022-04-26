// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ebook_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EbookListEventTearOff {
  const _$EbookListEventTearOff();

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

  _PageLimitChanged pageLimitChanged(int pageLimit) {
    return _PageLimitChanged(
      pageLimit,
    );
  }

  _SortOptionChanged sortOptionChanged(SortLevelOption? sortOption) {
    return _SortOptionChanged(
      sortOption,
    );
  }

  _LevelsChanged levelsChanged(List<Level> levels) {
    return _LevelsChanged(
      levels,
    );
  }

  _CategoriesChanged categoriesChanged(List<CourseCategory> categories) {
    return _CategoriesChanged(
      categories,
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
const $EbookListEvent = _$EbookListEventTearOff();

/// @nodoc
mixin _$EbookListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookListEventCopyWith<$Res> {
  factory $EbookListEventCopyWith(
          EbookListEvent value, $Res Function(EbookListEvent) then) =
      _$EbookListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EbookListEventCopyWithImpl<$Res>
    implements $EbookListEventCopyWith<$Res> {
  _$EbookListEventCopyWithImpl(this._value, this._then);

  final EbookListEvent _value;
  // ignore: unused_field
  final $Res Function(EbookListEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res> extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.initialise()';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _Initialise implements EbookListEvent {
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
    extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.keywordChanged(keyword: $keyword)';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _KeywordChanged implements EbookListEvent {
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
    extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.pageChanged(page: $page)';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _PageChanged implements EbookListEvent {
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
  $Res call({int pageLimit});
}

/// @nodoc
class __$PageLimitChangedCopyWithImpl<$Res>
    extends _$EbookListEventCopyWithImpl<$Res>
    implements _$PageLimitChangedCopyWith<$Res> {
  __$PageLimitChangedCopyWithImpl(
      _PageLimitChanged _value, $Res Function(_PageLimitChanged) _then)
      : super(_value, (v) => _then(v as _PageLimitChanged));

  @override
  _PageLimitChanged get _value => super._value as _PageLimitChanged;

  @override
  $Res call({
    Object? pageLimit = freezed,
  }) {
    return _then(_PageLimitChanged(
      pageLimit == freezed
          ? _value.pageLimit
          : pageLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageLimitChanged implements _PageLimitChanged {
  const _$_PageLimitChanged(this.pageLimit);

  @override
  final int pageLimit;

  @override
  String toString() {
    return 'EbookListEvent.pageLimitChanged(pageLimit: $pageLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageLimitChanged &&
            const DeepCollectionEquality().equals(other.pageLimit, pageLimit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageLimit));

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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return pageLimitChanged(pageLimit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return pageLimitChanged?.call(pageLimit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (pageLimitChanged != null) {
      return pageLimitChanged(pageLimit);
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _PageLimitChanged implements EbookListEvent {
  const factory _PageLimitChanged(int pageLimit) = _$_PageLimitChanged;

  int get pageLimit;
  @JsonKey(ignore: true)
  _$PageLimitChangedCopyWith<_PageLimitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SortOptionChangedCopyWith<$Res> {
  factory _$SortOptionChangedCopyWith(
          _SortOptionChanged value, $Res Function(_SortOptionChanged) then) =
      __$SortOptionChangedCopyWithImpl<$Res>;
  $Res call({SortLevelOption? sortOption});
}

/// @nodoc
class __$SortOptionChangedCopyWithImpl<$Res>
    extends _$EbookListEventCopyWithImpl<$Res>
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
              as SortLevelOption?,
    ));
  }
}

/// @nodoc

class _$_SortOptionChanged implements _SortOptionChanged {
  const _$_SortOptionChanged(this.sortOption);

  @override
  final SortLevelOption? sortOption;

  @override
  String toString() {
    return 'EbookListEvent.sortOptionChanged(sortOption: $sortOption)';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _SortOptionChanged implements EbookListEvent {
  const factory _SortOptionChanged(SortLevelOption? sortOption) =
      _$_SortOptionChanged;

  SortLevelOption? get sortOption;
  @JsonKey(ignore: true)
  _$SortOptionChangedCopyWith<_SortOptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LevelsChangedCopyWith<$Res> {
  factory _$LevelsChangedCopyWith(
          _LevelsChanged value, $Res Function(_LevelsChanged) then) =
      __$LevelsChangedCopyWithImpl<$Res>;
  $Res call({List<Level> levels});
}

/// @nodoc
class __$LevelsChangedCopyWithImpl<$Res>
    extends _$EbookListEventCopyWithImpl<$Res>
    implements _$LevelsChangedCopyWith<$Res> {
  __$LevelsChangedCopyWithImpl(
      _LevelsChanged _value, $Res Function(_LevelsChanged) _then)
      : super(_value, (v) => _then(v as _LevelsChanged));

  @override
  _LevelsChanged get _value => super._value as _LevelsChanged;

  @override
  $Res call({
    Object? levels = freezed,
  }) {
    return _then(_LevelsChanged(
      levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Level>,
    ));
  }
}

/// @nodoc

class _$_LevelsChanged implements _LevelsChanged {
  const _$_LevelsChanged(this.levels);

  @override
  final List<Level> levels;

  @override
  String toString() {
    return 'EbookListEvent.levelsChanged(levels: $levels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LevelsChanged &&
            const DeepCollectionEquality().equals(other.levels, levels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(levels));

  @JsonKey(ignore: true)
  @override
  _$LevelsChangedCopyWith<_LevelsChanged> get copyWith =>
      __$LevelsChangedCopyWithImpl<_LevelsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return levelsChanged(levels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return levelsChanged?.call(levels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (levelsChanged != null) {
      return levelsChanged(levels);
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return levelsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return levelsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (levelsChanged != null) {
      return levelsChanged(this);
    }
    return orElse();
  }
}

abstract class _LevelsChanged implements EbookListEvent {
  const factory _LevelsChanged(List<Level> levels) = _$_LevelsChanged;

  List<Level> get levels;
  @JsonKey(ignore: true)
  _$LevelsChangedCopyWith<_LevelsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoriesChangedCopyWith<$Res> {
  factory _$CategoriesChangedCopyWith(
          _CategoriesChanged value, $Res Function(_CategoriesChanged) then) =
      __$CategoriesChangedCopyWithImpl<$Res>;
  $Res call({List<CourseCategory> categories});
}

/// @nodoc
class __$CategoriesChangedCopyWithImpl<$Res>
    extends _$EbookListEventCopyWithImpl<$Res>
    implements _$CategoriesChangedCopyWith<$Res> {
  __$CategoriesChangedCopyWithImpl(
      _CategoriesChanged _value, $Res Function(_CategoriesChanged) _then)
      : super(_value, (v) => _then(v as _CategoriesChanged));

  @override
  _CategoriesChanged get _value => super._value as _CategoriesChanged;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_CategoriesChanged(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
    ));
  }
}

/// @nodoc

class _$_CategoriesChanged implements _CategoriesChanged {
  const _$_CategoriesChanged(this.categories);

  @override
  final List<CourseCategory> categories;

  @override
  String toString() {
    return 'EbookListEvent.categoriesChanged(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoriesChanged &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$CategoriesChangedCopyWith<_CategoriesChanged> get copyWith =>
      __$CategoriesChangedCopyWithImpl<_CategoriesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String keyword) keywordChanged,
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
    required TResult Function() searchOptionCleared,
    required TResult Function() submitted,
  }) {
    return categoriesChanged(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
  }) {
    return categoriesChanged?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String keyword)? keywordChanged,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
    TResult Function()? searchOptionCleared,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (categoriesChanged != null) {
      return categoriesChanged(categories);
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
    required TResult Function(_SearchOptionCleared value) searchOptionCleared,
    required TResult Function(_Submitted value) submitted,
  }) {
    return categoriesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
  }) {
    return categoriesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_KeywordChanged value)? keywordChanged,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
    TResult Function(_SearchOptionCleared value)? searchOptionCleared,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (categoriesChanged != null) {
      return categoriesChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoriesChanged implements EbookListEvent {
  const factory _CategoriesChanged(List<CourseCategory> categories) =
      _$_CategoriesChanged;

  List<CourseCategory> get categories;
  @JsonKey(ignore: true)
  _$CategoriesChangedCopyWith<_CategoriesChanged> get copyWith =>
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
    extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.searchOptionCleared()';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _SearchOptionCleared implements EbookListEvent {
  const factory _SearchOptionCleared() = _$_SearchOptionCleared;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$EbookListEventCopyWithImpl<$Res>
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
    return 'EbookListEvent.submitted()';
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
    required TResult Function(int pageLimit) pageLimitChanged,
    required TResult Function(SortLevelOption? sortOption) sortOptionChanged,
    required TResult Function(List<Level> levels) levelsChanged,
    required TResult Function(List<CourseCategory> categories)
        categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    TResult Function(int pageLimit)? pageLimitChanged,
    TResult Function(SortLevelOption? sortOption)? sortOptionChanged,
    TResult Function(List<Level> levels)? levelsChanged,
    TResult Function(List<CourseCategory> categories)? categoriesChanged,
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
    required TResult Function(_SortOptionChanged value) sortOptionChanged,
    required TResult Function(_LevelsChanged value) levelsChanged,
    required TResult Function(_CategoriesChanged value) categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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
    TResult Function(_SortOptionChanged value)? sortOptionChanged,
    TResult Function(_LevelsChanged value)? levelsChanged,
    TResult Function(_CategoriesChanged value)? categoriesChanged,
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

abstract class _Submitted implements EbookListEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$EbookListStateTearOff {
  const _$EbookListStateTearOff();

  _EbookListState call(
      {dynamic isLoading = false,
      bool isInitial = true,
      String keyword = '',
      int currentPage = 1,
      int limit = 20,
      List<Level> levels = const [],
      SortLevelOption? sortBy,
      List<CourseCategory> categories = const [],
      Either<Failure, List<Ebook>> listOrFailure = const Right([]),
      List<CourseCategory> allCategories = const []}) {
    return _EbookListState(
      isLoading: isLoading,
      isInitial: isInitial,
      keyword: keyword,
      currentPage: currentPage,
      limit: limit,
      levels: levels,
      sortBy: sortBy,
      categories: categories,
      listOrFailure: listOrFailure,
      allCategories: allCategories,
    );
  }
}

/// @nodoc
const $EbookListState = _$EbookListStateTearOff();

/// @nodoc
mixin _$EbookListState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<Level> get levels => throw _privateConstructorUsedError;
  SortLevelOption? get sortBy => throw _privateConstructorUsedError;
  List<CourseCategory> get categories => throw _privateConstructorUsedError;
  Either<Failure, List<Ebook>> get listOrFailure =>
      throw _privateConstructorUsedError;
  List<CourseCategory> get allCategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EbookListStateCopyWith<EbookListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookListStateCopyWith<$Res> {
  factory $EbookListStateCopyWith(
          EbookListState value, $Res Function(EbookListState) then) =
      _$EbookListStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      bool isInitial,
      String keyword,
      int currentPage,
      int limit,
      List<Level> levels,
      SortLevelOption? sortBy,
      List<CourseCategory> categories,
      Either<Failure, List<Ebook>> listOrFailure,
      List<CourseCategory> allCategories});
}

/// @nodoc
class _$EbookListStateCopyWithImpl<$Res>
    implements $EbookListStateCopyWith<$Res> {
  _$EbookListStateCopyWithImpl(this._value, this._then);

  final EbookListState _value;
  // ignore: unused_field
  final $Res Function(EbookListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInitial = freezed,
    Object? keyword = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? levels = freezed,
    Object? sortBy = freezed,
    Object? categories = freezed,
    Object? listOrFailure = freezed,
    Object? allCategories = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
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
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Level>,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortLevelOption?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Ebook>>,
      allCategories: allCategories == freezed
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
    ));
  }
}

/// @nodoc
abstract class _$EbookListStateCopyWith<$Res>
    implements $EbookListStateCopyWith<$Res> {
  factory _$EbookListStateCopyWith(
          _EbookListState value, $Res Function(_EbookListState) then) =
      __$EbookListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      bool isInitial,
      String keyword,
      int currentPage,
      int limit,
      List<Level> levels,
      SortLevelOption? sortBy,
      List<CourseCategory> categories,
      Either<Failure, List<Ebook>> listOrFailure,
      List<CourseCategory> allCategories});
}

/// @nodoc
class __$EbookListStateCopyWithImpl<$Res>
    extends _$EbookListStateCopyWithImpl<$Res>
    implements _$EbookListStateCopyWith<$Res> {
  __$EbookListStateCopyWithImpl(
      _EbookListState _value, $Res Function(_EbookListState) _then)
      : super(_value, (v) => _then(v as _EbookListState));

  @override
  _EbookListState get _value => super._value as _EbookListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInitial = freezed,
    Object? keyword = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? levels = freezed,
    Object? sortBy = freezed,
    Object? categories = freezed,
    Object? listOrFailure = freezed,
    Object? allCategories = freezed,
  }) {
    return _then(_EbookListState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
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
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Level>,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortLevelOption?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
      listOrFailure: listOrFailure == freezed
          ? _value.listOrFailure
          : listOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Ebook>>,
      allCategories: allCategories == freezed
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
    ));
  }
}

/// @nodoc

class _$_EbookListState extends _EbookListState {
  const _$_EbookListState(
      {this.isLoading = false,
      this.isInitial = true,
      this.keyword = '',
      this.currentPage = 1,
      this.limit = 20,
      this.levels = const [],
      this.sortBy,
      this.categories = const [],
      this.listOrFailure = const Right([]),
      this.allCategories = const []})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final bool isInitial;
  @JsonKey()
  @override
  final String keyword;
  @JsonKey()
  @override
  final int currentPage;
  @JsonKey()
  @override
  final int limit;
  @JsonKey()
  @override
  final List<Level> levels;
  @override
  final SortLevelOption? sortBy;
  @JsonKey()
  @override
  final List<CourseCategory> categories;
  @JsonKey()
  @override
  final Either<Failure, List<Ebook>> listOrFailure;
  @JsonKey()
  @override
  final List<CourseCategory> allCategories;

  @override
  String toString() {
    return 'EbookListState(isLoading: $isLoading, isInitial: $isInitial, keyword: $keyword, currentPage: $currentPage, limit: $limit, levels: $levels, sortBy: $sortBy, categories: $categories, listOrFailure: $listOrFailure, allCategories: $allCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EbookListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isInitial, isInitial) &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.levels, levels) &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.listOrFailure, listOrFailure) &&
            const DeepCollectionEquality()
                .equals(other.allCategories, allCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isInitial),
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(levels),
      const DeepCollectionEquality().hash(sortBy),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(listOrFailure),
      const DeepCollectionEquality().hash(allCategories));

  @JsonKey(ignore: true)
  @override
  _$EbookListStateCopyWith<_EbookListState> get copyWith =>
      __$EbookListStateCopyWithImpl<_EbookListState>(this, _$identity);
}

abstract class _EbookListState extends EbookListState {
  const factory _EbookListState(
      {dynamic isLoading,
      bool isInitial,
      String keyword,
      int currentPage,
      int limit,
      List<Level> levels,
      SortLevelOption? sortBy,
      List<CourseCategory> categories,
      Either<Failure, List<Ebook>> listOrFailure,
      List<CourseCategory> allCategories}) = _$_EbookListState;
  const _EbookListState._() : super._();

  @override
  dynamic get isLoading;
  @override
  bool get isInitial;
  @override
  String get keyword;
  @override
  int get currentPage;
  @override
  int get limit;
  @override
  List<Level> get levels;
  @override
  SortLevelOption? get sortBy;
  @override
  List<CourseCategory> get categories;
  @override
  Either<Failure, List<Ebook>> get listOrFailure;
  @override
  List<CourseCategory> get allCategories;
  @override
  @JsonKey(ignore: true)
  _$EbookListStateCopyWith<_EbookListState> get copyWith =>
      throw _privateConstructorUsedError;
}
