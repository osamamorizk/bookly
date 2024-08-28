import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio = Dio();

  // ApiService( this.dio);
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await _dio.get('$_baseUrl$endPoints');

    return response.data;
  }
}
