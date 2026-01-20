// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_isbn')
  String get bookIsbn => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call({
    String? id,
    String title,
    String author,
    @JsonKey(name: 'book_isbn') String bookIsbn,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    int status,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? author = null,
    Object? bookIsbn = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String,
            bookIsbn: null == bookIsbn
                ? _value.bookIsbn
                : bookIsbn // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnailUrl: freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
    _$BookImpl value,
    $Res Function(_$BookImpl) then,
  ) = __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String title,
    String author,
    @JsonKey(name: 'book_isbn') String bookIsbn,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    int status,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
    : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? author = null,
    Object? bookIsbn = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$BookImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String,
        bookIsbn: null == bookIsbn
            ? _value.bookIsbn
            : bookIsbn // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnailUrl: freezed == thumbnailUrl
            ? _value.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl({
    this.id,
    required this.title,
    required this.author,
    @JsonKey(name: 'book_isbn') required this.bookIsbn,
    @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
    this.status = 0,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String author;
  @override
  @JsonKey(name: 'book_isbn')
  final String bookIsbn;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, bookIsbn: $bookIsbn, thumbnailUrl: $thumbnailUrl, status: $status, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookIsbn, bookIsbn) ||
                other.bookIsbn == bookIsbn) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    author,
    bookIsbn,
    thumbnailUrl,
    status,
    userId,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(this);
  }
}

abstract class _Book implements Book {
  const factory _Book({
    final String? id,
    required final String title,
    required final String author,
    @JsonKey(name: 'book_isbn') required final String bookIsbn,
    @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
    final int status,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get author;
  @override
  @JsonKey(name: 'book_isbn')
  String get bookIsbn;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  int get status;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookSearchRequest _$BookSearchRequestFromJson(Map<String, dynamic> json) {
  return _BookSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$BookSearchRequest {
  @JsonKey(name: 'book_isbn')
  String get bookIsbn => throw _privateConstructorUsedError;

  /// Serializes this BookSearchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookSearchRequestCopyWith<BookSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSearchRequestCopyWith<$Res> {
  factory $BookSearchRequestCopyWith(
    BookSearchRequest value,
    $Res Function(BookSearchRequest) then,
  ) = _$BookSearchRequestCopyWithImpl<$Res, BookSearchRequest>;
  @useResult
  $Res call({@JsonKey(name: 'book_isbn') String bookIsbn});
}

/// @nodoc
class _$BookSearchRequestCopyWithImpl<$Res, $Val extends BookSearchRequest>
    implements $BookSearchRequestCopyWith<$Res> {
  _$BookSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookIsbn = null}) {
    return _then(
      _value.copyWith(
            bookIsbn: null == bookIsbn
                ? _value.bookIsbn
                : bookIsbn // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookSearchRequestImplCopyWith<$Res>
    implements $BookSearchRequestCopyWith<$Res> {
  factory _$$BookSearchRequestImplCopyWith(
    _$BookSearchRequestImpl value,
    $Res Function(_$BookSearchRequestImpl) then,
  ) = __$$BookSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'book_isbn') String bookIsbn});
}

/// @nodoc
class __$$BookSearchRequestImplCopyWithImpl<$Res>
    extends _$BookSearchRequestCopyWithImpl<$Res, _$BookSearchRequestImpl>
    implements _$$BookSearchRequestImplCopyWith<$Res> {
  __$$BookSearchRequestImplCopyWithImpl(
    _$BookSearchRequestImpl _value,
    $Res Function(_$BookSearchRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookIsbn = null}) {
    return _then(
      _$BookSearchRequestImpl(
        bookIsbn: null == bookIsbn
            ? _value.bookIsbn
            : bookIsbn // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookSearchRequestImpl implements _BookSearchRequest {
  const _$BookSearchRequestImpl({
    @JsonKey(name: 'book_isbn') required this.bookIsbn,
  });

  factory _$BookSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookSearchRequestImplFromJson(json);

  @override
  @JsonKey(name: 'book_isbn')
  final String bookIsbn;

  @override
  String toString() {
    return 'BookSearchRequest(bookIsbn: $bookIsbn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookSearchRequestImpl &&
            (identical(other.bookIsbn, bookIsbn) ||
                other.bookIsbn == bookIsbn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookIsbn);

  /// Create a copy of BookSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookSearchRequestImplCopyWith<_$BookSearchRequestImpl> get copyWith =>
      __$$BookSearchRequestImplCopyWithImpl<_$BookSearchRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookSearchRequestImplToJson(this);
  }
}

abstract class _BookSearchRequest implements BookSearchRequest {
  const factory _BookSearchRequest({
    @JsonKey(name: 'book_isbn') required final String bookIsbn,
  }) = _$BookSearchRequestImpl;

  factory _BookSearchRequest.fromJson(Map<String, dynamic> json) =
      _$BookSearchRequestImpl.fromJson;

  @override
  @JsonKey(name: 'book_isbn')
  String get bookIsbn;

  /// Create a copy of BookSearchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookSearchRequestImplCopyWith<_$BookSearchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
