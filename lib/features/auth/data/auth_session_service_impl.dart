import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/const/enum/session_status.dart';
import 'package:riverpod_base_demo/features/auth/data/service/local_token_storage.dart';
import 'package:riverpod_base_demo/shared/domain/session_service.dart';

part 'auth_session_service_impl.g.dart';

@riverpod
SessionService authSessionServiceImplementation(Ref ref) {
  final storage = ref.watch(localTokenStorageProvider);
  return AuthSessionServiceImpl(storage);
}

class AuthSessionServiceImpl implements SessionService {
  final LocalTokenStorage _localTokenStorage;

  AuthSessionServiceImpl(this._localTokenStorage);

  final StreamController<SessionStatus> _sessionController =
      StreamController.broadcast();
  SessionStatus _sessionStatus = SessionStatus.unauthenticated;

  @override
  Future<SessionStatus> initSession() async {
    final token = await _localTokenStorage.getToken();
    return updateSession(token ?? '');
  }

  @override
  SessionStatus get currentStatus => _sessionStatus;

  @override
  Stream<SessionStatus> get sessionState => _sessionController.stream;

  @override
  Future<SessionStatus> updateSession(String token) async {
    if (token.isNotEmpty) {
      _sessionStatus = SessionStatus.authenticated;
      await _localTokenStorage.saveToken(token);
    } else {
      _sessionStatus = SessionStatus.unauthenticated;
      await _localTokenStorage.deleteToken();
    }
    _sessionController.sink.add(_sessionStatus);
    return _sessionStatus;
  }
}
