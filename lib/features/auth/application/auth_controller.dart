import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/const/enum/session_status.dart';
import 'package:riverpod_base_demo/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:riverpod_base_demo/shared/providers/session_providers.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<SessionStatus> build() {
    final sessionService = ref.read(sessionServiceProvider);
    return sessionService.currentStatus ?? SessionStatus.unauthenticated;
  }

  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref
          .read(authRepositoryProvider)
          .login(username: username, password: password),
    );
  }
}
