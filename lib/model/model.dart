import 'package:diagnosa/custom_input.dart';

class DiabetesResponse {
  final String? result;
  final String? status;
  final int? statusCode;

  DiabetesResponse({this.result, this.status, this.statusCode});

  factory DiabetesResponse.fromJson(Map<String, dynamic> json) {
    return DiabetesResponse(
      result: json['result'],
      status: json['status'],
      statusCode: json['statusCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'status': status,
      'statusCode': statusCode,
    };
  }
}

class BeaCukaiCihuy {
  final List<CustomInputWidget> customInput;
  final String judulInput;

  BeaCukaiCihuy({required this.customInput, required this.judulInput});
}

class Menu {
  final String judul;
  final String endpoint;
  final List<CustomInputWidget> customInput;

  Menu({
    required this.judul,
    required this.endpoint,
    required this.customInput,
  });
}
