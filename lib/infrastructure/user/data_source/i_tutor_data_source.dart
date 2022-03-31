import '../../../domain/tutor/models/tutor.dart';
import '../../../domain/user/models/speciality.dart';
import '../../tutor/dto/tutor_details/tutor_details_dto.dart';
import '../../tutor/dto/tutor_list/tutor_list_item_dto.dart';

abstract class TutorDataSource {
  List<Tutor> getAllTutors();

  Future<Tutor?> getTutor(String id);

  Future<Tutor?> saveTutorFromTutorDetailsDto(
    List<Speciality> specialityMap,
    TutorDetailsDto tutorDetailsDto,
  );

  Future<List<Tutor>?> saveTutorsFromTutorListItemDto(
    List<Speciality> specialityMap,
    List<TutorListItemDto> tutorDtoList,
    List<String> favouriteTutors,
  );

  Future saveTutor(Tutor tutor);

  Future clear();

  Future dispose();
}
