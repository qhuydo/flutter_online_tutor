import 'dart:convert';

import 'package:flutter/services.dart';

class FixtureLoader {
  static Future<Object?> _loadJson(String path) async =>
      jsonDecode(await rootBundle.loadString(path));

  static const _assetPath = 'assets/fixtures';

  static Future<Map<String, dynamic>> get loginRequest async =>
      (await _loadJson(
        '$_assetPath/authentication/login/req_login.json',
      )) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginByPhoneRequest async =>
      (await _loadJson(
        '$_assetPath/authentication/login/req_login_by_phone.json',
      )) as Map<String, dynamic>;

  static Future<Map<String, dynamic>> get loginResponse async =>
      (await _loadJson(
        '$_assetPath/authentication/login/res_login_succeed.json',
      )) as Map<String, dynamic>;

  static Future<List> get learnTopicResponse async => (await _loadJson(
        '$_assetPath/common/learn_topic/res_learn_topic.json',
      ) as List);

  static Future<List> get testPreparationResponse async => (await _loadJson(
        '$_assetPath/common/test_preparation/test_preparation.json',
      ) as List);
}
