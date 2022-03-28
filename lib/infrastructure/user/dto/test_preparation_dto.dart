import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/models/test_preparation.dart';

part 'test_preparation_dto.freezed.dart';

part 'test_preparation_dto.g.dart';

@freezed
class TestPreparationDto with _$TestPreparationDto {
  const TestPreparationDto._();

  const factory TestPreparationDto({
    required int id,
    required String key,
    required String name,
  }) = _TestPreparationDto;

  factory TestPreparationDto.fromJson(Map<String, dynamic> json) =>
      _$TestPreparationDtoFromJson(json);

  TestPreparation toDomain() => TestPreparation(id: id, key: key, name: name);
}


