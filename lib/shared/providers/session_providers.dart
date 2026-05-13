import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_base_demo/shared/domain/session_service.dart';

part 'session_providers.g.dart';

@Riverpod(keepAlive: true)
SessionService sessionService(Ref ref) =>
    throw UnimplementedError('SessionService was not overridden');
