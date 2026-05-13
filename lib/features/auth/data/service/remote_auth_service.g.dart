// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_auth_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remoteAuthService)
final remoteAuthServiceProvider = RemoteAuthServiceProvider._();

final class RemoteAuthServiceProvider
    extends
        $FunctionalProvider<
          RemoteAuthService,
          RemoteAuthService,
          RemoteAuthService
        >
    with $Provider<RemoteAuthService> {
  RemoteAuthServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteAuthServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteAuthServiceHash();

  @$internal
  @override
  $ProviderElement<RemoteAuthService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteAuthService create(Ref ref) {
    return remoteAuthService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteAuthService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteAuthService>(value),
    );
  }
}

String _$remoteAuthServiceHash() => r'f5313e52bde285a333bcce19b028a8fc287e486a';
