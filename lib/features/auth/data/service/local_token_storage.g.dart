// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_token_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localTokenStorage)
final localTokenStorageProvider = LocalTokenStorageProvider._();

final class LocalTokenStorageProvider
    extends
        $FunctionalProvider<
          LocalTokenStorage,
          LocalTokenStorage,
          LocalTokenStorage
        >
    with $Provider<LocalTokenStorage> {
  LocalTokenStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localTokenStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localTokenStorageHash();

  @$internal
  @override
  $ProviderElement<LocalTokenStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocalTokenStorage create(Ref ref) {
    return localTokenStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalTokenStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalTokenStorage>(value),
    );
  }
}

String _$localTokenStorageHash() => r'c3bfdd4a366a2f48cd98987fbf95e60c35da2368';
