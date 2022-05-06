import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/message/models/partner_info.dart';

part 'partner_dto.freezed.dart';

part 'partner_dto.g.dart';

@freezed
class PartnerDto with _$PartnerDto {
  const PartnerDto._();

  const factory PartnerDto({
    required String id,
    @Default('') String name,
    String? avatar,
    @Default(false) bool isOnline,
  }) = _PartnerDto;

  factory PartnerDto.fromJson(Map<String, dynamic> json) =>
      _$PartnerDtoFromJson(json);

  PartnerInfo toDomain() => PartnerInfo(id: id, name: name, avatar: avatar);
}
