import 'package:dio/dio.dart';

const String url = 'http://programming-quotes-api.herokuapp.com';

class QuotesDataSource {
  QuotesDataSource() {
    _dio = Dio()..options = BaseOptions(baseUrl: url);
  }

  Dio? _dio;

  Future<T?> getRequest<T>({
    required String path,
    Map<String, dynamic>? args,
  }) async {
    try {
      _dio ??= Dio()..options = BaseOptions(baseUrl: url);

      final Response<T> response = await _dio!.get<T>(
        path,
        queryParameters: args,
      );
      return response.data;
    } catch (e) {
      return null;
    }
  }

  Future<T?> putRequest<T>({
    required String path,
    Map<String, dynamic>? args,
  }) async {
    _dio ??= Dio()..options = BaseOptions(baseUrl: url);

    final Response<T> response = await _dio!.put<T>(
      path,
      data: args,
    );
    return response.data;
  }

  Future<T?> deleteRequest<T>({
    required String path,
    Map<String, dynamic>? args,
  }) async {
    _dio ??= Dio()..options = BaseOptions(baseUrl: url);

    final Response<T> response = await _dio!.delete<T>(
      path,
      queryParameters: args,
    );
    return response.data;
  }
}
