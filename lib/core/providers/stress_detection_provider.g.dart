// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress_detection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stressDetectionEngineHash() =>
    r'77e3b4e361a7059e582e541016fc1c690a152ee7';

/// Provider for the StressDetectionEngine instance
///
/// Copied from [stressDetectionEngine].
@ProviderFor(stressDetectionEngine)
final stressDetectionEngineProvider =
    AutoDisposeProvider<StressDetectionEngine>.internal(
      stressDetectionEngine,
      name: r'stressDetectionEngineProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stressDetectionEngineHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StressDetectionEngineRef =
    AutoDisposeProviderRef<StressDetectionEngine>;
String _$demoStressAnalysisHash() =>
    r'f8633924b0a85e11d5f4bd3167b09f019e8ed249';

/// Provider for mock/demo stress analysis
/// Use this for testing and demonstration purposes
///
/// Copied from [demoStressAnalysis].
@ProviderFor(demoStressAnalysis)
final demoStressAnalysisProvider =
    AutoDisposeProvider<StressDetectionResult>.internal(
      demoStressAnalysis,
      name: r'demoStressAnalysisProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$demoStressAnalysisHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DemoStressAnalysisRef = AutoDisposeProviderRef<StressDetectionResult>;
String _$stressDetectionHash() => r'96642bd049bbbb49f0839dca2fbafbc6e1b02d73';

/// Provider for stress detection state
///
/// Copied from [StressDetection].
@ProviderFor(StressDetection)
final stressDetectionProvider =
    AutoDisposeNotifierProvider<
      StressDetection,
      AsyncValue<StressDetectionResult?>
    >.internal(
      StressDetection.new,
      name: r'stressDetectionProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stressDetectionHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StressDetection =
    AutoDisposeNotifier<AsyncValue<StressDetectionResult?>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
