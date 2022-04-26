import 'dart:convert';

import 'package:flutter/services.dart';

class FixtureLoader {
  static Future<Object?> _loadJson(String path) async =>
      jsonDecode(await rootBundle.loadString(path));

  static const _fixturePath = 'assets/fixtures';
  static const _assetPath = 'assets';

  static Future<Map<String, dynamic>> get loginRequest async => await _loadJson(
        '$_fixturePath/authentication/login/req_login.json',
      ) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginByPhoneRequest async =>
      await _loadJson(
        '$_fixturePath/authentication/login/req_login_by_phone.json',
      ) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginResponse async =>
      await _loadJson(
        '$_fixturePath/authentication/login/res_login_succeed.json',
      ) as Map<String, dynamic>;

  static Future<List> get learnTopicResponse async => await _loadJson(
        '$_fixturePath/common/learn_topic/res_learn_topic.json',
      ) as List;

  static Future<List> get testPreparationResponse async => await _loadJson(
        '$_fixturePath/common/test_preparation/test_preparation.json',
      ) as List;

  static Future<List> get languagesResponse async =>
      await _loadJson('$_fixturePath/user/level/languages.json') as List;

  static Future<Map<String, dynamic>> get languageJson async =>
      await _loadJson('$_assetPath/json/languages.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get tutorList async => await _loadJson(
        '$_fixturePath/tutor/tutor_list/res_tutors.json',
      ) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> tutorDetails(String id) async =>
      await _loadJson('$_fixturePath/tutor/tutor_details/$id.json')
          as Map<String, dynamic>;

  static Future<List> get specialities async => await _loadJson(
        '$_fixturePath/common/specialities/specialities.json',
      ) as List;

  static Future<Map<String, dynamic>> tutorSchedule(String tutorId) async =>
      await _loadJson('$_fixturePath/tutor/tutor_schedule/$tutorId.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get upcomingClasses async =>
      await _loadJson('$_fixturePath/schedule/schedule_list/res_schedule.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get classHistory async =>
      await _loadJson('$_fixturePath/schedule/history/res_history.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get courseList async =>
      await _loadJson('$_fixturePath/course_ebook/list/res_course_by_page.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get ebookList async =>
      await _loadJson('$_fixturePath/course_ebook/ebook_list/res_ebook.json')
          as Map<String, dynamic>;

  static Future<Map<String, dynamic>>
      get courseCategories async => await _loadJson(
              '$_fixturePath/common/content_category/res_content_category.json')
          as Map<String, dynamic>;
}
