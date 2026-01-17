// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$anchorChatServiceHash() => r'1f364b0b28c2650b8b5aa98a056dee96499d4b51';

/// See also [anchorChatService].
@ProviderFor(anchorChatService)
final anchorChatServiceProvider =
    AutoDisposeProvider<AnchorChatService>.internal(
      anchorChatService,
      name: r'anchorChatServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$anchorChatServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AnchorChatServiceRef = AutoDisposeProviderRef<AnchorChatService>;
String _$proactiveInsightServiceHash() =>
    r'1efd8b9ebfad48ad860c3c904cddb9a925ed9e9a';

/// See also [proactiveInsightService].
@ProviderFor(proactiveInsightService)
final proactiveInsightServiceProvider =
    AutoDisposeProvider<ProactiveInsightService>.internal(
      proactiveInsightService,
      name: r'proactiveInsightServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$proactiveInsightServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProactiveInsightServiceRef =
    AutoDisposeProviderRef<ProactiveInsightService>;
String _$anchorContextHash() => r'0de9bcc36f3f62a9e9dee812a76c30ddde79e902';

/// See also [anchorContext].
@ProviderFor(anchorContext)
final anchorContextProvider = AutoDisposeFutureProvider<AnchorContext>.internal(
  anchorContext,
  name: r'anchorContextProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$anchorContextHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AnchorContextRef = AutoDisposeFutureProviderRef<AnchorContext>;
String _$chatNotifierHash() => r'896d4de5324c8437b80ad24a3b4f70c8bae6ae9e';

/// See also [ChatNotifier].
@ProviderFor(ChatNotifier)
final chatNotifierProvider =
    AutoDisposeNotifierProvider<ChatNotifier, ChatConversation>.internal(
      ChatNotifier.new,
      name: r'chatNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$chatNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ChatNotifier = AutoDisposeNotifier<ChatConversation>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
