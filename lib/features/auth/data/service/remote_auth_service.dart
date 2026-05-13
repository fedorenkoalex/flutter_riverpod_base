import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/providers/common_providers.dart';
import 'package:riverpod_base_demo/features/auth/data/models/auth_request.dart';
import 'package:riverpod_base_demo/features/auth/data/models/auth_response.dart';

part 'remote_auth_service.g.dart';

@riverpod
RemoteAuthService remoteAuthService(Ref ref) =>
    RemoteAuthService(ref.read<Dio>(dioProvider));

class RemoteAuthService {
  final Dio _dio;

  final String _loginPath = '/auth/login';

  RemoteAuthService(this._dio);

  Future<AuthResponse> login(AuthRequest request) async {
    final response = await _dio.post(_loginPath, data: request.toJson());
    return AuthResponse.fromJson(response.data);
  }
}
