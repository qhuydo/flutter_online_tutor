import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/models/speciality.dart';

part 'speciality_dto.freezed.dart';

part 'speciality_dto.g.dart';

@freezed
class SpecialityDto with _$SpecialityDto {
  const SpecialityDto._();

  const factory SpecialityDto({
    required int id,
    required String key,
    required String name,
  }) = _SpecialityDto;

  factory SpecialityDto.fromJson(Map<String, dynamic> json) =>
      _$SpecialityDtoFromJson(json);

  Speciality toDomain() => Speciality(id: id, key: key, name: name);

  factory SpecialityDto.fromDomain(Speciality speciality) => SpecialityDto(
        id: speciality.id,
        key: speciality.key,
        name: speciality.name,
      );
}
