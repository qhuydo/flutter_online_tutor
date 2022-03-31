import 'dart:convert';

import 'package:flutter/services.dart';

class FixtureLoader {
  static Future<Object?> _loadJson(String path) async =>
      jsonDecode(await rootBundle.loadString(path));

  static const _fixturePath = 'assets/fixtures';
  static const _assetPath = 'assets';

  static Future<Map<String, dynamic>> get loginRequest async =>
      (await _loadJson(
        '$_fixturePath/authentication/login/req_login.json',
      )) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginByPhoneRequest async =>
      (await _loadJson(
        '$_fixturePath/authentication/login/req_login_by_phone.json',
      )) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginResponse async =>
      (await _loadJson(
        '$_fixturePath/authentication/login/res_login_succeed.json',
      )) as Map<String, dynamic>;

  static Future<List> get learnTopicResponse async => (await _loadJson(
        '$_fixturePath/common/learn_topic/res_learn_topic.json',
      ) as List);

  static Future<List> get testPreparationResponse async => (await _loadJson(
        '$_fixturePath/common/test_preparation/test_preparation.json',
      ) as List);

  static Future<List> get languagesResponse async =>
      (await _loadJson('$_fixturePath/user/level/languages.json') as List);

  static Future<Map<String, dynamic>> get languageJson async =>
      (await _loadJson('$_assetPath/json/languages.json')
          as Map<String, dynamic>);

  static Future<Map<String, dynamic>> get tutorList async => (await _loadJson(
        '$_fixturePath/tutor/tutor_list/res_tutors.json',
      ) as Map<String, dynamic>);

  static Future<Map<String, dynamic>> tutorDetails(String id) async =>
      (await _loadJson('$_fixturePath/tutor/tutor_details/$id.json')
          as Map<String, dynamic>);

  static Future<List> get specialities async => (await _loadJson(
        '$_fixturePath/common/specialities/specialities.json',
      ) as List);
}
