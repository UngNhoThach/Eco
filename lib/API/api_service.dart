// ignore_for_file: camel_case_types, avoid_print, body_might_complete_normally_nullable

import 'dart:developer';

import 'package:http/http.dart' as http;

class apiService {
  static Future<http.Response?> apiProvinces() async {
    try {
      http.Response response =
          await http.get(Uri.tryParse('https://provinces.open-api.vn/api/')!);

      if (response.statusCode == 200) {
        return response;
      } else {
        print('error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('error: $e');
    }
  }
}
