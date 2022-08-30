import 'dart:convert';

import 'package:demoapp/models/demo_model.dart';
import 'package:dio/dio.dart';

class DemoRepository {
  final Dio _dio = Dio();
  String endpoint = 'https://reqres.in/api/users?page=2';

  Future<List<DemoModel>> getBoredActivity() async {
    Response response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.data);
      return result.map((e) => DemoModel.fromJson(e)).toList();
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
