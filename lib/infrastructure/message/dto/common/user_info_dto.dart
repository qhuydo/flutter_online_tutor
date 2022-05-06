import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/message/models/user_info.dart';

part 'user_info_dto.freezed.dart';

part 'user_info_dto.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto {
  const UserInfoDto._();

  const factory UserInfoDto({
    required String id,
    @Default('') String name,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);

  UserInfo toDomain() => UserInfo(id: id, name: name);

  factory UserInfoDto.fromDomain(UserInfo userInfo) => UserInfoDto(
        id: userInfo.id,
        name: userInfo.name,
      );
}
