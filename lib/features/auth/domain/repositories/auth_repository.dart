import 'package:riverpod_base_demo/core/const/enum/session_status.dart';

abstract class AuthRepository {
  Future<SessionStatus> login({
    required String username,
    required String password,
  });

  Future<SessionStatus> logout();
}
