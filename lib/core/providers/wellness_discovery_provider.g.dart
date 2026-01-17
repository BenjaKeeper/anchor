// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_discovery_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contextAnalyzerHash() => r'c33b75d030c0cd4d352e4fa4271ae9a81eb352cc';

/// See also [contextAnalyzer].
@ProviderFor(contextAnalyzer)
final contextAnalyzerProvider = AutoDisposeProvider<ContextAnalyzer>.internal(
  contextAnalyzer,
  name: r'contextAnalyzerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$contextAnalyzerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ContextAnalyzerRef = AutoDisposeProviderRef<ContextAnalyzer>;
String _$wellnessSearchServiceHash() =>
    r'a914ed4cfa746b3e629e658c1510bb79097a62f9';

/// See also [wellnessSearchService].
@ProviderFor(wellnessSearchService)
final wellnessSearchServiceProvider =
    AutoDisposeProvider<WellnessSearchService>.internal(
      wellnessSearchService,
      name: r'wellnessSearchServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$wellnessSearchServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WellnessSearchServiceRef =
    AutoDisposeProviderRef<WellnessSearchService>;
String _$optionScorerHash() => r'cb83db9a6d50c668a1978f2f416abfc6d39a3079';

/// See also [optionScorer].
@ProviderFor(optionScorer)
final optionScorerProvider = AutoDisposeProvider<OptionScorer>.internal(
  optionScorer,
  name: r'optionScorerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$optionScorerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef OptionScorerRef = AutoDisposeProviderRef<OptionScorer>;
String _$wellnessDiscoveryEngineHash() =>
    r'1464e00625cf086047118153f5df8897adf353cf';

/// See also [wellnessDiscoveryEngine].
@ProviderFor(wellnessDiscoveryEngine)
final wellnessDiscoveryEngineProvider =
    AutoDisposeProvider<WellnessDiscoveryEngine>.internal(
      wellnessDiscoveryEngine,
      name: r'wellnessDiscoveryEngineProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$wellnessDiscoveryEngineHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WellnessDiscoveryEngineRef =
    AutoDisposeProviderRef<WellnessDiscoveryEngine>;
String _$userLocationHash() => r'16ca4ebe1b2e6e9e289639e9d439c6174dde73e3';

/// Current user location (Mocked for now)
///
/// Copied from [userLocation].
@ProviderFor(userLocation)
final userLocationProvider = AutoDisposeProvider<UserLocation>.internal(
  userLocation,
  name: r'userLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserLocationRef = AutoDisposeProviderRef<UserLocation>;
String _$userBaseHash() => r'1d4d8afac45ba7b0f0b3cde71c0fc197504e1290';

/// User home/hotel base (Mocked)
///
/// Copied from [userBase].
@ProviderFor(userBase)
final userBaseProvider = AutoDisposeProvider<UserBase>.internal(
  userBase,
  name: r'userBaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userBaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserBaseRef = AutoDisposeProviderRef<UserBase>;
String _$userPreferencesHash() => r'a7b62f92872eaee403a607bf9ca65b19447fd8d8';

/// User preferences (Mocked)
///
/// Copied from [userPreferences].
@ProviderFor(userPreferences)
final userPreferencesProvider = AutoDisposeProvider<UserPreferences>.internal(
  userPreferences,
  name: r'userPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserPreferencesRef = AutoDisposeProviderRef<UserPreferences>;
String _$wellnessDiscoveryHash() => r'b6a533f947d6ded215b66cd32838c28f739905ec';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// The main discovery result provider
///
/// Copied from [wellnessDiscovery].
@ProviderFor(wellnessDiscovery)
const wellnessDiscoveryProvider = WellnessDiscoveryFamily();

/// The main discovery result provider
///
/// Copied from [wellnessDiscovery].
class WellnessDiscoveryFamily extends Family<AsyncValue<DiscoveryResult>> {
  /// The main discovery result provider
  ///
  /// Copied from [wellnessDiscovery].
  const WellnessDiscoveryFamily();

  /// The main discovery result provider
  ///
  /// Copied from [wellnessDiscovery].
  WellnessDiscoveryProvider call({required TimeWindow window}) {
    return WellnessDiscoveryProvider(window: window);
  }

  @override
  WellnessDiscoveryProvider getProviderOverride(
    covariant WellnessDiscoveryProvider provider,
  ) {
    return call(window: provider.window);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'wellnessDiscoveryProvider';
}

/// The main discovery result provider
///
/// Copied from [wellnessDiscovery].
class WellnessDiscoveryProvider
    extends AutoDisposeFutureProvider<DiscoveryResult> {
  /// The main discovery result provider
  ///
  /// Copied from [wellnessDiscovery].
  WellnessDiscoveryProvider({required TimeWindow window})
    : this._internal(
        (ref) => wellnessDiscovery(ref as WellnessDiscoveryRef, window: window),
        from: wellnessDiscoveryProvider,
        name: r'wellnessDiscoveryProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$wellnessDiscoveryHash,
        dependencies: WellnessDiscoveryFamily._dependencies,
        allTransitiveDependencies:
            WellnessDiscoveryFamily._allTransitiveDependencies,
        window: window,
      );

  WellnessDiscoveryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.window,
  }) : super.internal();

  final TimeWindow window;

  @override
  Override overrideWith(
    FutureOr<DiscoveryResult> Function(WellnessDiscoveryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WellnessDiscoveryProvider._internal(
        (ref) => create(ref as WellnessDiscoveryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        window: window,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DiscoveryResult> createElement() {
    return _WellnessDiscoveryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WellnessDiscoveryProvider && other.window == window;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, window.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WellnessDiscoveryRef on AutoDisposeFutureProviderRef<DiscoveryResult> {
  /// The parameter `window` of this provider.
  TimeWindow get window;
}

class _WellnessDiscoveryProviderElement
    extends AutoDisposeFutureProviderElement<DiscoveryResult>
    with WellnessDiscoveryRef {
  _WellnessDiscoveryProviderElement(super.provider);

  @override
  TimeWindow get window => (origin as WellnessDiscoveryProvider).window;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
