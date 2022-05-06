// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageDetailsEventTearOff {
  const _$MessageDetailsEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }

  _TextChanged textChanged(String text) {
    return _TextChanged(
      text,
    );
  }

  _TextSubmitted textSubmitted() {
    return const _TextSubmitted();
  }
}

/// @nodoc
const $MessageDetailsEvent = _$MessageDetailsEventTearOff();

/// @nodoc
mixin _$MessageDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String text) textChanged,
    required TResult Function() textSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_TextSubmitted value) textSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailsEventCopyWith<$Res> {
  factory $MessageDetailsEventCopyWith(
          MessageDetailsEvent value, $Res Function(MessageDetailsEvent) then) =
      _$MessageDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageDetailsEventCopyWithImpl<$Res>
    implements $MessageDetailsEventCopyWith<$Res> {
  _$MessageDetailsEventCopyWithImpl(this._value, this._then);

  final MessageDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MessageDetailsEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$MessageDetailsEventCopyWithImpl<$Res>
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
    return 'MessageDetailsEvent.initialise()';
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
    required TResult Function(String text) textChanged,
    required TResult Function() textSubmitted,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
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
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_TextSubmitted value) textSubmitted,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements MessageDetailsEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
abstract class _$TextChangedCopyWith<$Res> {
  factory _$TextChangedCopyWith(
          _TextChanged value, $Res Function(_TextChanged) then) =
      __$TextChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$TextChangedCopyWithImpl<$Res>
    extends _$MessageDetailsEventCopyWithImpl<$Res>
    implements _$TextChangedCopyWith<$Res> {
  __$TextChangedCopyWithImpl(
      _TextChanged _value, $Res Function(_TextChanged) _then)
      : super(_value, (v) => _then(v as _TextChanged));

  @override
  _TextChanged get _value => super._value as _TextChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_TextChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextChanged implements _TextChanged {
  const _$_TextChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'MessageDetailsEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextChanged &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$TextChangedCopyWith<_TextChanged> get copyWith =>
      __$TextChangedCopyWithImpl<_TextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String text) textChanged,
    required TResult Function() textSubmitted,
  }) {
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
  }) {
    return textChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_TextSubmitted value) textSubmitted,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements MessageDetailsEvent {
  const factory _TextChanged(String text) = _$_TextChanged;

  String get text;
  @JsonKey(ignore: true)
  _$TextChangedCopyWith<_TextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TextSubmittedCopyWith<$Res> {
  factory _$TextSubmittedCopyWith(
          _TextSubmitted value, $Res Function(_TextSubmitted) then) =
      __$TextSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TextSubmittedCopyWithImpl<$Res>
    extends _$MessageDetailsEventCopyWithImpl<$Res>
    implements _$TextSubmittedCopyWith<$Res> {
  __$TextSubmittedCopyWithImpl(
      _TextSubmitted _value, $Res Function(_TextSubmitted) _then)
      : super(_value, (v) => _then(v as _TextSubmitted));

  @override
  _TextSubmitted get _value => super._value as _TextSubmitted;
}

/// @nodoc

class _$_TextSubmitted implements _TextSubmitted {
  const _$_TextSubmitted();

  @override
  String toString() {
    return 'MessageDetailsEvent.textSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TextSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String text) textChanged,
    required TResult Function() textSubmitted,
  }) {
    return textSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
  }) {
    return textSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String text)? textChanged,
    TResult Function()? textSubmitted,
    required TResult orElse(),
  }) {
    if (textSubmitted != null) {
      return textSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_TextChanged value) textChanged,
    required TResult Function(_TextSubmitted value) textSubmitted,
  }) {
    return textSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
  }) {
    return textSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_TextChanged value)? textChanged,
    TResult Function(_TextSubmitted value)? textSubmitted,
    required TResult orElse(),
  }) {
    if (textSubmitted != null) {
      return textSubmitted(this);
    }
    return orElse();
  }
}

abstract class _TextSubmitted implements MessageDetailsEvent {
  const factory _TextSubmitted() = _$_TextSubmitted;
}

/// @nodoc
class _$MessageDetailsStateTearOff {
  const _$MessageDetailsStateTearOff();

  _MessageDetailsState call(
      {String? userId,
      required String partnerId,
      bool isLoading = false,
      List<MessageBubble> messageList = const [],
      String text = ''}) {
    return _MessageDetailsState(
      userId: userId,
      partnerId: partnerId,
      isLoading: isLoading,
      messageList: messageList,
      text: text,
    );
  }
}

/// @nodoc
const $MessageDetailsState = _$MessageDetailsStateTearOff();

/// @nodoc
mixin _$MessageDetailsState {
  String? get userId => throw _privateConstructorUsedError;
  String get partnerId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<MessageBubble> get messageList => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDetailsStateCopyWith<MessageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailsStateCopyWith<$Res> {
  factory $MessageDetailsStateCopyWith(
          MessageDetailsState value, $Res Function(MessageDetailsState) then) =
      _$MessageDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String partnerId,
      bool isLoading,
      List<MessageBubble> messageList,
      String text});
}

/// @nodoc
class _$MessageDetailsStateCopyWithImpl<$Res>
    implements $MessageDetailsStateCopyWith<$Res> {
  _$MessageDetailsStateCopyWithImpl(this._value, this._then);

  final MessageDetailsState _value;
  // ignore: unused_field
  final $Res Function(MessageDetailsState) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? partnerId = freezed,
    Object? isLoading = freezed,
    Object? messageList = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: messageList == freezed
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageBubble>,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessageDetailsStateCopyWith<$Res>
    implements $MessageDetailsStateCopyWith<$Res> {
  factory _$MessageDetailsStateCopyWith(_MessageDetailsState value,
          $Res Function(_MessageDetailsState) then) =
      __$MessageDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String partnerId,
      bool isLoading,
      List<MessageBubble> messageList,
      String text});
}

/// @nodoc
class __$MessageDetailsStateCopyWithImpl<$Res>
    extends _$MessageDetailsStateCopyWithImpl<$Res>
    implements _$MessageDetailsStateCopyWith<$Res> {
  __$MessageDetailsStateCopyWithImpl(
      _MessageDetailsState _value, $Res Function(_MessageDetailsState) _then)
      : super(_value, (v) => _then(v as _MessageDetailsState));

  @override
  _MessageDetailsState get _value => super._value as _MessageDetailsState;

  @override
  $Res call({
    Object? userId = freezed,
    Object? partnerId = freezed,
    Object? isLoading = freezed,
    Object? messageList = freezed,
    Object? text = freezed,
  }) {
    return _then(_MessageDetailsState(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: messageList == freezed
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageBubble>,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageDetailsState extends _MessageDetailsState {
  const _$_MessageDetailsState(
      {this.userId,
      required this.partnerId,
      this.isLoading = false,
      this.messageList = const [],
      this.text = ''})
      : super._();

  @override
  final String? userId;
  @override
  final String partnerId;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<MessageBubble> messageList;
  @JsonKey()
  @override
  final String text;

  @override
  String toString() {
    return 'MessageDetailsState(userId: $userId, partnerId: $partnerId, isLoading: $isLoading, messageList: $messageList, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageDetailsState &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.partnerId, partnerId) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.messageList, messageList) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(partnerId),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(messageList),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$MessageDetailsStateCopyWith<_MessageDetailsState> get copyWith =>
      __$MessageDetailsStateCopyWithImpl<_MessageDetailsState>(
          this, _$identity);
}

abstract class _MessageDetailsState extends MessageDetailsState {
  const factory _MessageDetailsState(
      {String? userId,
      required String partnerId,
      bool isLoading,
      List<MessageBubble> messageList,
      String text}) = _$_MessageDetailsState;
  const _MessageDetailsState._() : super._();

  @override
  String? get userId;
  @override
  String get partnerId;
  @override
  bool get isLoading;
  @override
  List<MessageBubble> get messageList;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$MessageDetailsStateCopyWith<_MessageDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
