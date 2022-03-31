import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/tutor/models/tutor.dart';
import '../../../domain/user/models/speciality.dart';
import '../../tutor/dto/tutor_details/tutor_details_dto.dart';
import '../../tutor/dto/tutor_list/tutor_list_item_dto.dart';
import 'i_tutor_data_source.dart';

@LazySingleton(as: TutorDataSource)
class LocalTutorDataSource implements TutorDataSource {
  static const _boxTutor = 'tutors';

  late Box<String> _box;

  LocalTutorDataSource() {
    _init();
  }

  Future _init() async {
    _box = await Hive.openBox<String>(_boxTutor);
  }

  @override
  @disposeMethod
  Future dispose() async {
    _box.close();
  }

  @override
  Future clear() {
    return _box.clear();
  }

  Tutor? decode(String? tutor) {
    if (tutor == null) return null;

    return Tutor.fromJson(jsonDecode(tutor));
  }

  @override
  List<Tutor> getAllTutors() => _box.values
      .map((e) => Tutor.fromJson(jsonDecode(e)))
      .toList(growable: false);

  @override
  Future<Tutor?> getTutor(String id) async => decode(_box.get(id));

  @override
  Future<Tutor> saveTutorFromTutorDetailsDto(
    List<Speciality> specialityMap,
    TutorDetailsDto tutorDetailsDto,
  ) async {
    final tutor = tutorDetailsDto.toDomain(specialityMap: specialityMap);

    await _box.put(tutor.id, jsonEncode(tutor));
    return tutor;
  }

  @override
  Future<List<Tutor>?> saveTutorsFromTutorListItemDto(
    List<Speciality> specialityMap,
    List<TutorListItemDto> tutorDtoList,
    List<String> favouriteTutors,
  ) async {
    final tutorsMap = <String, String>{};
    final tutors = <Tutor>[];

    for (final tutorDto in tutorDtoList) {
      final tutor = tutorDto.toDomain(
          specialityMap: specialityMap,
          isFavourite: favouriteTutors.contains(tutorDto.userId));

      tutors.add(tutor);
      tutorsMap.addEntries({tutorDto.userId: jsonEncode(tutor)}.entries);
    }

    await _box.putAll(tutorsMap);
    return tutors;
  }

  @override
  Future saveTutor(Tutor tutor) async {
    await _box.put(tutor.id, jsonEncode(tutor));
  }
}
