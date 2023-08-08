import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.github.com/search/repositories';
  final Dio dio;
  ApiService(
    this.dio,
  );
  final String endPoint = '?q=created:>2019-01-10&sort=popular&order=desc';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
