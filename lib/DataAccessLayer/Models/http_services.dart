// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;

  final baseUrl = "https://noble.brain.sy/api/v1/story";

  HttpService() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    initializeInterceptor();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(onError: (error, handler) {
      print(error.message);
    }, onRequest: (request, handler) {
      print((request.method));
    }, onResponse: (response, handler) {
      print(response.data);
    }));
  }
}
