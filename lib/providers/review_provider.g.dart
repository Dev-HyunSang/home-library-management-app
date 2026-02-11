// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookReviewsHash() => r'7599b9277b3858ba64d1ca39b8f9153c3ce2cf01';

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

abstract class _$BookReviews
    extends BuildlessAutoDisposeAsyncNotifier<List<Review>> {
  late final String isbn;

  FutureOr<List<Review>> build(String isbn);
}

/// See also [BookReviews].
@ProviderFor(BookReviews)
const bookReviewsProvider = BookReviewsFamily();

/// See also [BookReviews].
class BookReviewsFamily extends Family<AsyncValue<List<Review>>> {
  /// See also [BookReviews].
  const BookReviewsFamily();

  /// See also [BookReviews].
  BookReviewsProvider call(String isbn) {
    return BookReviewsProvider(isbn);
  }

  @override
  BookReviewsProvider getProviderOverride(
    covariant BookReviewsProvider provider,
  ) {
    return call(provider.isbn);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookReviewsProvider';
}

/// See also [BookReviews].
class BookReviewsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookReviews, List<Review>> {
  /// See also [BookReviews].
  BookReviewsProvider(String isbn)
    : this._internal(
        () => BookReviews()..isbn = isbn,
        from: bookReviewsProvider,
        name: r'bookReviewsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bookReviewsHash,
        dependencies: BookReviewsFamily._dependencies,
        allTransitiveDependencies: BookReviewsFamily._allTransitiveDependencies,
        isbn: isbn,
      );

  BookReviewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isbn,
  }) : super.internal();

  final String isbn;

  @override
  FutureOr<List<Review>> runNotifierBuild(covariant BookReviews notifier) {
    return notifier.build(isbn);
  }

  @override
  Override overrideWith(BookReviews Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookReviewsProvider._internal(
        () => create()..isbn = isbn,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isbn: isbn,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookReviews, List<Review>>
  createElement() {
    return _BookReviewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookReviewsProvider && other.isbn == isbn;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isbn.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookReviewsRef on AutoDisposeAsyncNotifierProviderRef<List<Review>> {
  /// The parameter `isbn` of this provider.
  String get isbn;
}

class _BookReviewsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookReviews, List<Review>>
    with BookReviewsRef {
  _BookReviewsProviderElement(super.provider);

  @override
  String get isbn => (origin as BookReviewsProvider).isbn;
}

String _$myReviewsHash() => r'addaf57ccaa3444a477c81f60bb4925b137ac317';

/// See also [MyReviews].
@ProviderFor(MyReviews)
final myReviewsProvider =
    AutoDisposeAsyncNotifierProvider<MyReviews, List<Review>>.internal(
      MyReviews.new,
      name: r'myReviewsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$myReviewsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MyReviews = AutoDisposeAsyncNotifier<List<Review>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
