

import 'package:dio/dio.dart';

class ApiService
{


  final Dio dio;
  ApiService({required this.dio});

  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<dynamic> get({required String endPoint}) async
  {
    Response response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }


}