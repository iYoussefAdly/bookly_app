import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;
  Failures({required this.errorMessage});
}

class ServerFailuer extends Failures {
  ServerFailuer({required super.errorMessage});
  factory ServerFailuer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer(errorMessage: "Connection timeout with server");
      case DioExceptionType.sendTimeout:
        return ServerFailuer(errorMessage: "Send timeout with server");
      case DioExceptionType.receiveTimeout:
        return ServerFailuer(errorMessage: "Receive timeout from server");
      case DioExceptionType.badCertificate:
        return ServerFailuer(errorMessage: "Bad certificate from server");
      case DioExceptionType.cancel:
        return ServerFailuer(errorMessage: "Request to server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailuer(errorMessage: "Connection error with server");
      case DioExceptionType.unknown:
        if (dioException.message != null &&
            dioException.message!.contains("SocketException")) {
          return ServerFailuer(errorMessage: "No Internet Conncetion");
        } else {
          return ServerFailuer(errorMessage: "unexpected error");
        }
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
          dioException.response!.statusCode!,
          dioException.response?.data,
        );
    }
  }
  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(errorMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailuer(
        errorMessage: "Your request not found! Please try again late",
      );
    } else if (statusCode == 500) {
      return ServerFailuer(
        errorMessage: "Enternal server error please try again later",
      );
    } else {
      return ServerFailuer(
        errorMessage: "Oops there's an error please try again!",
      );
    }
  }
}
