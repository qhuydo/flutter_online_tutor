// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageListItemTearOff {
  const _$MessageListItemTearOff();

  _MessageListItem call(
      {required String id,
      bool hasRead = false,
      String content = '',
      required DateTime createdAt,
      required PartnerInfo partner,
      required UserInfo from,
      required UserInfo to}) {
    return _MessageListItem(
      id: id,
      hasRead: hasRead,
      content: content,
      createdAt: createdAt,
      partner: partner,
      from: from,
      to: to,
    );
  }
}

/// @nodoc
const $MessageListItem = _$MessageListItemTearOff();

/// @nodoc
mixin _$MessageListItem {
  String get id => throw _privateConstructorUsedError;
  bool get hasRead => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  PartnerInfo get partner => throw _privateConstructorUsedError;
  UserInfo get from => throw _privateConstructorUsedError;
  UserInfo get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageListItemCopyWith<MessageListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListItemCopyWith<$Res> {
  factory $MessageListItemCopyWith(
          MessageListItem value, $Res Function(MessageListItem) then) =
      _$MessageListItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool hasRead,
      String content,
      DateTime createdAt,
      PartnerInfo partner,
      UserInfo from,
      UserInfo to});

  $PartnerInfoCopyWith<$Res> get partner;
  $UserInfoCopyWith<$Res> get from;
  $UserInfoCopyWith<$Res> get to;
}

/// @nodoc
class _$MessageListItemCopyWithImpl<$Res>
    implements $MessageListItemCopyWith<$Res> {
  _$MessageListItemCopyWithImpl(this._value, this._then);

  final MessageListItem _value;
  // ignore: unused_field
  final $Res Function(MessageListItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? hasRead = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? partner = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hasRead: hasRead == freezed
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerInfo,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }

  @override
  $PartnerInfoCopyWith<$Res> get partner {
    return $PartnerInfoCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value));
    });
  }

  @override
  $UserInfoCopyWith<$Res> get from {
    return $UserInfoCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $UserInfoCopyWith<$Res> get to {
    return $UserInfoCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$MessageListItemCopyWith<$Res>
    implements $MessageListItemCopyWith<$Res> {
  factory _$MessageListItemCopyWith(
          _MessageListItem value, $Res Function(_MessageListItem) then) =
      __$MessageListItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool hasRead,
      String content,
      DateTime createdAt,
      PartnerInfo partner,
      UserInfo from,
      UserInfo to});

  @override
  $PartnerInfoCopyWith<$Res> get partner;
  @override
  $UserInfoCopyWith<$Res> get from;
  @override
  $UserInfoCopyWith<$Res> get to;
}

/// @nodoc
class __$MessageListItemCopyWithImpl<$Res>
    extends _$MessageListItemCopyWithImpl<$Res>
    implements _$MessageListItemCopyWith<$Res> {
  __$MessageListItemCopyWithImpl(
      _MessageListItem _value, $Res Function(_MessageListItem) _then)
      : super(_value, (v) => _then(v as _MessageListItem));

  @override
  _MessageListItem get _value => super._value as _MessageListItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? hasRead = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? partner = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_MessageListItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hasRead: hasRead == freezed
          ? _value.hasRead
          : hasRead // ignore: cast_nullable_to_non_nullable
              as bool,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerInfo,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc

class _$_MessageListItem extends _MessageListItem {
  const _$_MessageListItem(
      {required this.id,
      this.hasRead = false,
      this.content = '',
      required this.createdAt,
      required this.partner,
      required this.from,
      required this.to})
      : super._();

  @override
  final String id;
  @JsonKey()
  @override
  final bool hasRead;
  @JsonKey()
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final PartnerInfo partner;
  @override
  final UserInfo from;
  @override
  final UserInfo to;

  @override
  String toString() {
    return 'MessageListItem(id: $id, hasRead: $hasRead, content: $content, createdAt: $createdAt, partner: $partner, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageListItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.hasRead, hasRead) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.partner, partner) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(hasRead),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(partner),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$MessageListItemCopyWith<_MessageListItem> get copyWith =>
      __$MessageListItemCopyWithImpl<_MessageListItem>(this, _$identity);
}

abstract class _MessageListItem extends MessageListItem {
  const factory _MessageListItem(
      {required String id,
      bool hasRead,
      String content,
      required DateTime createdAt,
      required PartnerInfo partner,
      required UserInfo from,
      required UserInfo to}) = _$_MessageListItem;
  const _MessageListItem._() : super._();

  @override
  String get id;
  @override
  bool get hasRead;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  PartnerInfo get partner;
  @override
  UserInfo get from;
  @override
  UserInfo get to;
  @override
  @JsonKey(ignore: true)
  _$MessageListItemCopyWith<_MessageListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
