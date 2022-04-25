import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/tutor/models/tutor.dart';
import '../../../domain/user/models/speciality.dart';
import '../../tutor/dto/tutor_details/tutor_details_dto.dart';
import '../../tutor/dto/tutor_list/tutor_list_item_dto.dart';
import 'i_tutor_data_source.dart';

@Singleton(as: TutorDataSource)
class LocalTutorDataSource implements TutorDataSource {
  static const _boxTutorName = 'tutors';
  static const _boxFavouriteTutorIdsName = 'favourite_tutor_ids';

  late Box<String> _box;
  late Box<String> _boxFavouriteTutorIds;

  LocalTutorDataSource() {
    _init();
  }

  Future _init() async {
    _box = await Hive.openBox<String>(_boxTutorName);
    _boxFavouriteTutorIds =
        await Hive.openBox<String>(_boxFavouriteTutorIdsName);
  }

  @override
  @disposeMethod
  Future dispose() async {
    _box.close();
  }

  @override
  Future clear() async {
    await _boxFavouriteTutorIds.clear();
    await _box.clear();
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

    if (_box.containsKey(tutor.id)) {
      tutor.copyWith(
        isOnline: decode(_box.get(tutor.id)!)?.isOnline,
      );
    }
    if (tutor.isFavourite) {
      await _boxFavouriteTutorIds.put(tutor.id, tutor.id);
    } else {
      await _boxFavouriteTutorIds.delete(tutor.id);
    }

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
    await _boxFavouriteTutorIds.clear();
    await _boxFavouriteTutorIds.putAll({for (final v in favouriteTutors) v: v});
    return tutors;
  }

  @override
  Future saveTutor(Tutor tutor) async {
    if (tutor.isFavourite) {
      await _boxFavouriteTutorIds.put(tutor.id, tutor.id);
    } else {
      await _boxFavouriteTutorIds.delete(tutor.id);
    }
    await _box.put(tutor.id, jsonEncode(tutor));
  }

  @override
  Future<List<Tutor>> getFavouriteTutors() async {
    final ids = _boxFavouriteTutorIds.values;
    return [for (final id in ids) await getTutor(id)]
        .where((element) => element != null)
        .cast<Tutor>()
        .toList();
  }
}
