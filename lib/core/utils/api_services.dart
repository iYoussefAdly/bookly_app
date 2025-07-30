import 'package:dio/dio.dart';

class ApiServices {
  ApiServices(this._dio);
  final baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;
  Future<Map<String, dynamic>> get({required String endPoint}) async{
    Response response = await _dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
