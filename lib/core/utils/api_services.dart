import 'package:dio/dio.dart';

class ApiServices {
  ApiServices(this.dio);
  final baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Future<Map<String, dynamic>> get({required String endPoint}) async{
    Response response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
