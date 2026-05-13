import 'package:riverpod_base_demo/core/const/enum/session_status.dart';

abstract class SessionService {
  Stream<SessionStatus> get sessionState;
  SessionStatus get currentStatus;
  Future<SessionStatus> initSession();
  Future<SessionStatus> updateSession(String token);
}
