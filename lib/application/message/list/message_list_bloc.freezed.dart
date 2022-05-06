// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageListEventTearOff {
  const _$MessageListEventTearOff();

  _Initialise initialise() {
    return const _Initialise();
  }

  _messageRead messageRead(MessageListItem item) {
    return _messageRead(
      item,
    );
  }
}

/// @nodoc
const $MessageListEvent = _$MessageListEventTearOff();

/// @nodoc
mixin _$MessageListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(MessageListItem item) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_messageRead value) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListEventCopyWith<$Res> {
  factory $MessageListEventCopyWith(
          MessageListEvent value, $Res Function(MessageListEvent) then) =
      _$MessageListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageListEventCopyWithImpl<$Res>
    implements $MessageListEventCopyWith<$Res> {
  _$MessageListEventCopyWithImpl(this._value, this._then);

  final MessageListEvent _value;
  // ignore: unused_field
  final $Res Function(MessageListEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res>
    extends _$MessageListEventCopyWithImpl<$Res>
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
    return 'MessageListEvent.initialise()';
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
    required TResult Function(MessageListItem item) messageRead,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
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
    required TResult Function(_messageRead value) messageRead,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements MessageListEvent {
  const factory _Initialise() = _$_Initialise;
}

/// @nodoc
abstract class _$messageReadCopyWith<$Res> {
  factory _$messageReadCopyWith(
          _messageRead value, $Res Function(_messageRead) then) =
      __$messageReadCopyWithImpl<$Res>;
  $Res call({MessageListItem item});

  $MessageListItemCopyWith<$Res> get item;
}

/// @nodoc
class __$messageReadCopyWithImpl<$Res>
    extends _$MessageListEventCopyWithImpl<$Res>
    implements _$messageReadCopyWith<$Res> {
  __$messageReadCopyWithImpl(
      _messageRead _value, $Res Function(_messageRead) _then)
      : super(_value, (v) => _then(v as _messageRead));

  @override
  _messageRead get _value => super._value as _messageRead;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_messageRead(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MessageListItem,
    ));
  }

  @override
  $MessageListItemCopyWith<$Res> get item {
    return $MessageListItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_messageRead implements _messageRead {
  const _$_messageRead(this.item);

  @override
  final MessageListItem item;

  @override
  String toString() {
    return 'MessageListEvent.messageRead(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _messageRead &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$messageReadCopyWith<_messageRead> get copyWith =>
      __$messageReadCopyWithImpl<_messageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(MessageListItem item) messageRead,
  }) {
    return messageRead(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
  }) {
    return messageRead?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(MessageListItem item)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_messageRead value) messageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_messageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class _messageRead implements MessageListEvent {
  const factory _messageRead(MessageListItem item) = _$_messageRead;

  MessageListItem get item;
  @JsonKey(ignore: true)
  _$messageReadCopyWith<_messageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessageListStateTearOff {
  const _$MessageListStateTearOff();

  _MessageState call(
      {String? userJson,
      bool isLoading = false,
      List<MessageListItem> messageList = const []}) {
    return _MessageState(
      userJson: userJson,
      isLoading: isLoading,
      messageList: messageList,
    );
  }
}

/// @nodoc
const $MessageListState = _$MessageListStateTearOff();

/// @nodoc
mixin _$MessageListState {
  String? get userJson => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<MessageListItem> get messageList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageListStateCopyWith<MessageListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListStateCopyWith<$Res> {
  factory $MessageListStateCopyWith(
          MessageListState value, $Res Function(MessageListState) then) =
      _$MessageListStateCopyWithImpl<$Res>;
  $Res call(
      {String? userJson, bool isLoading, List<MessageListItem> messageList});
}

/// @nodoc
class _$MessageListStateCopyWithImpl<$Res>
    implements $MessageListStateCopyWith<$Res> {
  _$MessageListStateCopyWithImpl(this._value, this._then);

  final MessageListState _value;
  // ignore: unused_field
  final $Res Function(MessageListState) _then;

  @override
  $Res call({
    Object? userJson = freezed,
    Object? isLoading = freezed,
    Object? messageList = freezed,
  }) {
    return _then(_value.copyWith(
      userJson: userJson == freezed
          ? _value.userJson
          : userJson // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: messageList == freezed
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageListItem>,
    ));
  }
}

/// @nodoc
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageListStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userJson, bool isLoading, List<MessageListItem> messageList});
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res>
    extends _$MessageListStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;

  @override
  $Res call({
    Object? userJson = freezed,
    Object? isLoading = freezed,
    Object? messageList = freezed,
  }) {
    return _then(_MessageState(
      userJson: userJson == freezed
          ? _value.userJson
          : userJson // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: messageList == freezed
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageListItem>,
    ));
  }
}

/// @nodoc

class _$_MessageState extends _MessageState {
  const _$_MessageState(
      {this.userJson, this.isLoading = false, this.messageList = const []})
      : super._();

  @override
  final String? userJson;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<MessageListItem> messageList;

  @override
  String toString() {
    return 'MessageListState(userJson: $userJson, isLoading: $isLoading, messageList: $messageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageState &&
            const DeepCollectionEquality().equals(other.userJson, userJson) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.messageList, messageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userJson),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(messageList));

  @JsonKey(ignore: true)
  @override
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);
}

abstract class _MessageState extends MessageListState {
  const factory _MessageState(
      {String? userJson,
      bool isLoading,
      List<MessageListItem> messageList}) = _$_MessageState;
  const _MessageState._() : super._();

  @override
  String? get userJson;
  @override
  bool get isLoading;
  @override
  List<MessageListItem> get messageList;
  @override
  @JsonKey(ignore: true)
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
