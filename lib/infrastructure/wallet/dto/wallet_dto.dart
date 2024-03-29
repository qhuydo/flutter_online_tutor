import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_dto.freezed.dart';

part 'wallet_dto.g.dart';

@freezed
class WalletDto with _$WalletDto {
  const factory WalletDto({
    required String id,
    required String userId,
    String? amount,
    bool? isBlocked,
    required String createdAt,
    required String updatedAt,
    int? bonus,
  }) = _WalletDto;

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);
}
