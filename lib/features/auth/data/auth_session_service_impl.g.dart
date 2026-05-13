// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_service_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authSessionServiceImplementation)
final authSessionServiceImplementationProvider =
    AuthSessionServiceImplementationProvider._();

final class AuthSessionServiceImplementationProvider
    extends $FunctionalProvider<SessionService, SessionService, SessionService>
    with $Provider<SessionService> {
  AuthSessionServiceImplementationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authSessionServiceImplementationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authSessionServiceImplementationHash();

  @$internal
  @override
  $ProviderElement<SessionService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SessionService create(Ref ref) {
    return authSessionServiceImplementation(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionService>(value),
    );
  }
}

String _$authSessionServiceImplementationHash() =>
    r'685952bfd333bb2286b1d10988cd5285ce059f5c';
