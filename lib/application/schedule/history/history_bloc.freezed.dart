// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryEventTearOff {
  const _$HistoryEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
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
}

/// @nodoc
const $HistoryEvent = _$HistoryEventTearOff();

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res> implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  final HistoryEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
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
    return 'HistoryEvent.initialise()';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements HistoryEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
abstract class _$PageChangedCopyWith<$Res> {
  factory _$PageChangedCopyWith(
          _PageChanged value, $Res Function(_PageChanged) then) =
      __$PageChangedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$PageChangedCopyWithImpl<$Res> extends _$HistoryEventCopyWithImpl<$Res>
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
    return 'HistoryEvent.pageChanged(page: $page)';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
  }) {
    return pageChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
  }) {
    return pageChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements HistoryEvent {
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
    extends _$HistoryEventCopyWithImpl<$Res>
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
    return 'HistoryEvent.pageLimitChanged(pageLimit: $pageLimit)';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(int pageLimit) pageLimitChanged,
  }) {
    return pageLimitChanged(pageLimit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
  }) {
    return pageLimitChanged?.call(pageLimit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(int page)? pageChanged,
    TResult Function(int pageLimit)? pageLimitChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_PageLimitChanged value) pageLimitChanged,
  }) {
    return pageLimitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
  }) {
    return pageLimitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_PageLimitChanged value)? pageLimitChanged,
    required TResult orElse(),
  }) {
    if (pageLimitChanged != null) {
      return pageLimitChanged(this);
    }
    return orElse();
  }
}

abstract class _PageLimitChanged implements HistoryEvent {
  const factory _PageLimitChanged(int pageLimit) = _$_PageLimitChanged;

  int get pageLimit;
  @JsonKey(ignore: true)
  _$PageLimitChangedCopyWith<_PageLimitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _HistoryState call(
      {dynamic isLoading = false,
      int currentPage = 1,
      int limit = 20,
      Either<Failure, PaginationListDto<Appointment>> classOrFailure =
          const Right(PaginationListDto(list: [], totalItems: 0, limit: 20))}) {
    return _HistoryState(
      isLoading: isLoading,
      currentPage: currentPage,
      limit: limit,
      classOrFailure: classOrFailure,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  Either<Failure, PaginationListDto<Appointment>> get classOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      int currentPage,
      int limit,
      Either<Failure, PaginationListDto<Appointment>> classOrFailure});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? classOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      classOrFailure: classOrFailure == freezed
          ? _value.classOrFailure
          : classOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, PaginationListDto<Appointment>>,
    ));
  }
}

/// @nodoc
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      int currentPage,
      int limit,
      Either<Failure, PaginationListDto<Appointment>> classOrFailure});
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? classOrFailure = freezed,
  }) {
    return _then(_HistoryState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      classOrFailure: classOrFailure == freezed
          ? _value.classOrFailure
          : classOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Failure, PaginationListDto<Appointment>>,
    ));
  }
}

/// @nodoc

class _$_HistoryState extends _HistoryState {
  const _$_HistoryState(
      {this.isLoading = false,
      this.currentPage = 1,
      this.limit = 20,
      this.classOrFailure =
          const Right(PaginationListDto(list: [], totalItems: 0, limit: 20))})
      : super._();

  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final int currentPage;
  @JsonKey()
  @override
  final int limit;
  @JsonKey()
  @override
  final Either<Failure, PaginationListDto<Appointment>> classOrFailure;

  @override
  String toString() {
    return 'HistoryState(isLoading: $isLoading, currentPage: $currentPage, limit: $limit, classOrFailure: $classOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.classOrFailure, classOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(classOrFailure));

  @JsonKey(ignore: true)
  @override
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState extends HistoryState {
  const factory _HistoryState(
          {dynamic isLoading,
          int currentPage,
          int limit,
          Either<Failure, PaginationListDto<Appointment>> classOrFailure}) =
      _$_HistoryState;
  const _HistoryState._() : super._();

  @override
  dynamic get isLoading;
  @override
  int get currentPage;
  @override
  int get limit;
  @override
  Either<Failure, PaginationListDto<Appointment>> get classOrFailure;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
