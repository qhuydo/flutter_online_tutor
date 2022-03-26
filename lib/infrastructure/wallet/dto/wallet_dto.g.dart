// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDto _$$_WalletDtoFromJson(Map<String, dynamic> json) => _$_WalletDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      amount: (json['amount'] as num).toDouble(),
      isBlocked: json['isBlocked'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      bonus: json['bonus'] as int,
    );

Map<String, dynamic> _$$_WalletDtoToJson(_$_WalletDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'isBlocked': instance.isBlocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'bonus': instance.bonus,
    };
