import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/const/enum/session_status.dart';
import 'package:riverpod_base_demo/features/auth/data/models/auth_request.dart';
import 'package:riverpod_base_demo/features/auth/data/service/remote_auth_service.dart';
import 'package:riverpod_base_demo/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_base_demo/shared/domain/session_service.dart';
import 'package:riverpod_base_demo/shared/providers/session_providers.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) => AuthRepositoryImpl(
  ref.read<RemoteAuthService>(remoteAuthServiceProvider),
  ref.read<SessionService>(sessionServiceProvider),
);

class AuthRepositoryImpl implements AuthRepository {
  final RemoteAuthService _authService;
  final SessionService _sessionService;

  AuthRepositoryImpl(this._authService, this._sessionService);

  @override
  Future<SessionStatus> login({
    required String username,
    required String password,
  }) async {
    try {
      final request = AuthRequest(username: username, password: password);
      final response = await _authService.login(request);
      final token = response.token;
      if (token.isEmpty) {
        throw Exception('Token is empty');
      }
      return _sessionService.updateSession(token);
    } catch (e) {
      throw Exception('Failed to log in: $e');
    }
  }

  @override
  Future<SessionStatus> logout() async {
    try {
      return _sessionService.updateSession('');
    } catch (e) {
      throw Exception('Failed to log out: $e');
    }
  }
}
