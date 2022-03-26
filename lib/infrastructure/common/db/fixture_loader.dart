import 'dart:convert';

import 'package:flutter/services.dart';

class FixtureLoader {
  static Future<Map<String, dynamic>> _loadJson(String path) async =>
      json.decode(await rootBundle.loadString(path));

  static Future<Map<String, dynamic>> get loginRequest => _loadJson(
        'assets/fixtures/authentication/login/req_login.json',
      );

  static Future<Map<String, dynamic>> get loginByPhoneRequest => _loadJson(
        'assets/fixtures/authentication/login/req_login_by_phone.json',
      );

  static Future<Map<String, dynamic>> get loginResponse => _loadJson(
        'assets/fixtures/authentication/login/res_login_succeed.json',
      );
}
