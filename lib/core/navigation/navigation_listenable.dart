// shared/router/router_listenable.dart
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/const/enum/session_status.dart';
import 'package:riverpod_base_demo/shared/providers/session_providers.dart';

part 'navigation_listenable.g.dart';

@Riverpod(keepAlive: true)
class NavigationListenable extends _$NavigationListenable
    implements Listenable {
  StreamSubscription<SessionStatus>? _sessionSubscription;
  VoidCallback? _routerListener;

  @override
  FutureOr<void> build() async {
    _sessionSubscription = ref.read(sessionServiceProvider).sessionState.listen(
      (session) {
        _routerListener?.call();
      },
    );
    ref.onDispose(() {
      _sessionSubscription?.cancel();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    final session = ref.read(sessionServiceProvider).currentStatus;
    final isLoggingIn = state.matchedLocation == '/login';
    switch (session) {
      case SessionStatus.authenticated:
        {
          if (isLoggingIn) {
            return '/home';
          }
          return null;
        }

      case SessionStatus.unauthenticated:
        {
          return isLoggingIn ? null : '/login';
        }
    }
  }

  @override
  void addListener(VoidCallback listener) => _routerListener = listener;

  @override
  void removeListener(VoidCallback listener) => _routerListener = null;

  void dispose() {
    _sessionSubscription?.cancel();
  }
}
