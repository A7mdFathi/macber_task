import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiService {
  final Dio _dio;
  static const String token =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMmI3OTFlZGI4ZDI0ZTZkOTc4ZWU2MWM1YzU1YTM3MyIsInN1YiI6IjY1ODM4YWJiMDgzNTQ3NDRjMjNlYjIwYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.h9Th32S-o_1ZNcX8EyAXW0cO8SyTrvSLxv2AEtMPQ1o";

  ApiService(this._dio) {
    _dio.interceptors.add(LogInterceptor());
    _dio.options.headers["Authorization"] = 'Bearer $token';
  }

  /// Post api
  Future<Response<T>> postApi<T>(
    String path, {
    Map<String?, dynamic> body = const {},
    bool isJson = true,
    bool isAuth = true,
  }) async {
    Response<T> response = await _dio.post(path, data: body, options: Options(validateStatus: (status) {
      if (status == 401) return false;
      return true;
    }));

    return response;
  }

  Future<Response<T>> getApi<T>(
    String path, {
    bool hasLanguage = true,
    Map<String, dynamic>? queryParam,
  }) async {
    Response<T> response = await _dio.get(
      path,
      options: Options(
        contentType: 'application/json',
      ),
      queryParameters: queryParam,
    );

    return response;
  }
}
