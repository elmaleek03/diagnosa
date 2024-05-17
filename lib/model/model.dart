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

class Menu {
  final String? judul;
  final String? endpoint;
  final List<String>? textInput;

  Menu({
    this.judul,
    this.endpoint,
    this.textInput,
  });
}
