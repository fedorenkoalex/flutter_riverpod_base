// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_product_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remoteProductService)
final remoteProductServiceProvider = RemoteProductServiceProvider._();

final class RemoteProductServiceProvider
    extends
        $FunctionalProvider<
          RemoteProductService,
          RemoteProductService,
          RemoteProductService
        >
    with $Provider<RemoteProductService> {
  RemoteProductServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteProductServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteProductServiceHash();

  @$internal
  @override
  $ProviderElement<RemoteProductService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteProductService create(Ref ref) {
    return remoteProductService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteProductService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteProductService>(value),
    );
  }
}

String _$remoteProductServiceHash() =>
    r'6321f23f035e54a905e45f48edb382d70dd8c622';
