import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/country.dart';
import '../../user/constants/levels.dart';
import '../../user/models/speciality.dart';
import 'feedback.dart';
import 'language.dart';

part 'tutor.freezed.dart';

part 'tutor.g.dart';

@freezed
class Tutor with _$Tutor {
  const factory Tutor({
    required String id,
    String? avatar,
    required String bio,
    required Country country,
    required String education,
    required double averageRating,
    // @Default([]) List<Course> courses,
    @Default([]) List<Feedback> feedbacks,
    required String interests,
    required bool isFavourite,
    required bool? isOnline,
    @Default([]) List<Language> languages,
    required String name,
    required double price,
    required String profession,
    @Default([]) List<Speciality> specialities,
    required Level targetStudent,
    required String video,
  }) = _Tutor;

  factory Tutor.fromJson(Map<String, dynamic> json) => _$TutorFromJson(json);
}
