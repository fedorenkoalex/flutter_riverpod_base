import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_base_demo/features/auth/data/auth_session_service_impl.dart';
import 'package:riverpod_base_demo/main_app.dart';
import 'package:riverpod_base_demo/shared/providers/session_providers.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        sessionServiceProvider.overrideWith((ref) {
          final service = ref.watch(authSessionServiceImplementationProvider);
          service.initSession();
          return service;
        }),
      ],
      child: const MainApp(),
    ),
  );
}
