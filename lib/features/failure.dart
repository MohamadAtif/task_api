import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  Failure(this.errmessage);
}

class ServerFaliure extends Failure {
  ServerFaliure(super.errmessage);

  factory ServerFaliure.formDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection Timeout with Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send Timeout with Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Recieve Timeout with Api Server');

      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFaliure('Request with Api Server was Cancel');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFaliure('No Internet Connection');
        }
        return ServerFaliure('Please Try again!');

      default:
        return ServerFaliure('oppsss there was an error , Please try Later!');
    }
  }

  factory ServerFaliure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure('errormessage');
    } else if (statusCode == 404) {
      return ServerFaliure('Your Request Not Found ... Please try Later!');
    } else if (statusCode == 500) {
      return ServerFaliure('Server Not Found ... Please try Later!');
    } else {
      return ServerFaliure('oppsss there was an error , Please try Later!');
    }
  }
}
