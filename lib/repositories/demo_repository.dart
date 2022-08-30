import 'dart:convert';

import 'package:demoapp/models/demo_model.dart';
import 'package:dio/dio.dart';

class DemoRepository {
  final Dio _dio = Dio();
  String endpoint = 'https://reqres.in/api/users?page=2';

  Future<List<DemoModel>> getBoredActivity() async {
    try {
      Response response = await _dio.get(endpoint);
      final List result = response.data['data'];
      return result.map((e) => DemoModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
