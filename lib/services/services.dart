import 'package:diagnosa/model/model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DiagnosaService {
  static final Dio dio = Dio();
  static String apiUrl = 'https://3bb0-103-47-132-60.ngrok-free.app/';

  static Future<DiabetesResponse> getResult(
      String endPoint, Map<String, double> data) async {
    debugPrint('Fetching result...');
    debugPrint('ini data yg dikirim: $data');

    final response = await dio.post(
      '$apiUrl/$endPoint',
      data: data,
      options: Options(
        contentType: Headers.jsonContentType,
      ),
    );
    debugPrint('ini response ${response.data}');

    if (response.statusCode == 200) {
      return DiabetesResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
