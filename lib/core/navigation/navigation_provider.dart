// Location: lib/core/navigation/navigation.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/core/navigation/navigation_listenable.dart';
import 'package:riverpod_base_demo/core/navigation/navigation_route.dart';
import 'package:riverpod_base_demo/features/auth/presentation/screens/login_screen.dart';
import 'package:riverpod_base_demo/shared/providers/session_providers.dart';

part 'navigation_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter navigation(Ref ref) {
  final listenable = ref.watch(navigationListenableProvider.notifier);
  return GoRouter(
    initialLocation: NavigationRoute.login.path,
    debugLogDiagnostics: true,
    refreshListenable: listenable,
    redirect: listenable.redirect,
    routes: [
      GoRoute(
        path: NavigationRoute.login.path,
        name: NavigationRoute.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: NavigationRoute.home.path,
        name: NavigationRoute.home.name,
        builder: (context, state) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Home Screen (Placeholder)'),
                ElevatedButton(
                  onPressed: () {
                    ref.read(sessionServiceProvider).updateSession('');
                  },
                  child: Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
