import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/const/api_const.dart';

part 'common_providers.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(baseUrl: ApiConst.baseUrl, contentType: 'application/json'),
  );
  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ),
  );
  return dio;
}

@riverpod
FlutterSecureStorage secureStorage(Ref ref) => FlutterSecureStorage();
