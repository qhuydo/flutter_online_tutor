
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_info.freezed.dart';

@freezed
class PartnerInfo with _$PartnerInfo {
  const factory PartnerInfo({
    required String id,
    String? avatar,
    required String name,
    @Default(false) isOnline,
  }) = _PartnerInfo;
}