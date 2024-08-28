import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio = Dio();

  // ApiService( this.dio);
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await dio.get('$baseUrl$endPoints');

    return response.data;
  }
}
