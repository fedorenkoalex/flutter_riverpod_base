// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_listenable.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NavigationListenable)
final navigationListenableProvider = NavigationListenableProvider._();

final class NavigationListenableProvider
    extends $AsyncNotifierProvider<NavigationListenable, void> {
  NavigationListenableProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigationListenableProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigationListenableHash();

  @$internal
  @override
  NavigationListenable create() => NavigationListenable();
}

String _$navigationListenableHash() =>
    r'354c16c473b569d51420dac1fb5fd33302eedcb0';

abstract class _$NavigationListenable extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
