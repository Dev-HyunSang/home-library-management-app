// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookDetailHash() => r'64e4ed0f0dbd8b4879da28308c111622b315d162';

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

/// See also [bookDetail].
@ProviderFor(bookDetail)
const bookDetailProvider = BookDetailFamily();

/// See also [bookDetail].
class BookDetailFamily extends Family<AsyncValue<Book>> {
  /// See also [bookDetail].
  const BookDetailFamily();

  /// See also [bookDetail].
  BookDetailProvider call(String userId, String bookId) {
    return BookDetailProvider(userId, bookId);
  }

  @override
  BookDetailProvider getProviderOverride(
    covariant BookDetailProvider provider,
  ) {
    return call(provider.userId, provider.bookId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookDetailProvider';
}

/// See also [bookDetail].
class BookDetailProvider extends AutoDisposeFutureProvider<Book> {
  /// See also [bookDetail].
  BookDetailProvider(String userId, String bookId)
    : this._internal(
        (ref) => bookDetail(ref as BookDetailRef, userId, bookId),
        from: bookDetailProvider,
        name: r'bookDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bookDetailHash,
        dependencies: BookDetailFamily._dependencies,
        allTransitiveDependencies: BookDetailFamily._allTransitiveDependencies,
        userId: userId,
        bookId: bookId,
      );

  BookDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.bookId,
  }) : super.internal();

  final String userId;
  final String bookId;

  @override
  Override overrideWith(
    FutureOr<Book> Function(BookDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookDetailProvider._internal(
        (ref) => create(ref as BookDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Book> createElement() {
    return _BookDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookDetailProvider &&
        other.userId == userId &&
        other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookDetailRef on AutoDisposeFutureProviderRef<Book> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `bookId` of this provider.
  String get bookId;
}

class _BookDetailProviderElement extends AutoDisposeFutureProviderElement<Book>
    with BookDetailRef {
  _BookDetailProviderElement(super.provider);

  @override
  String get userId => (origin as BookDetailProvider).userId;
  @override
  String get bookId => (origin as BookDetailProvider).bookId;
}

String _$bookListHash() => r'51ca9eb33704749f306e5bc823e831ec1d2691d9';

/// See also [BookList].
@ProviderFor(BookList)
final bookListProvider =
    AutoDisposeAsyncNotifierProvider<BookList, List<Book>>.internal(
      BookList.new,
      name: r'bookListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bookListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BookList = AutoDisposeAsyncNotifier<List<Book>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
