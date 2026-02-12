// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewBook _$ReviewBookFromJson(Map<String, dynamic> json) {
  return _ReviewBook.fromJson(json);
}

/// @nodoc
mixin _$ReviewBook {
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this ReviewBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewBookCopyWith<ReviewBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewBookCopyWith<$Res> {
  factory $ReviewBookCopyWith(
    ReviewBook value,
    $Res Function(ReviewBook) then,
  ) = _$ReviewBookCopyWithImpl<$Res, ReviewBook>;
  @useResult
  $Res call({
    String? title,
    String? author,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
  });
}

/// @nodoc
class _$ReviewBookCopyWithImpl<$Res, $Val extends ReviewBook>
    implements $ReviewBookCopyWith<$Res> {
  _$ReviewBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String?,
            thumbnailUrl: freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewBookImplCopyWith<$Res>
    implements $ReviewBookCopyWith<$Res> {
  factory _$$ReviewBookImplCopyWith(
    _$ReviewBookImpl value,
    $Res Function(_$ReviewBookImpl) then,
  ) = __$$ReviewBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? title,
    String? author,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
  });
}

/// @nodoc
class __$$ReviewBookImplCopyWithImpl<$Res>
    extends _$ReviewBookCopyWithImpl<$Res, _$ReviewBookImpl>
    implements _$$ReviewBookImplCopyWith<$Res> {
  __$$ReviewBookImplCopyWithImpl(
    _$ReviewBookImpl _value,
    $Res Function(_$ReviewBookImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(
      _$ReviewBookImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _value.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewBookImpl implements _ReviewBook {
  const _$ReviewBookImpl({
    this.title,
    this.author,
    @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
  });

  factory _$ReviewBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewBookImplFromJson(json);

  @override
  final String? title;
  @override
  final String? author;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'ReviewBook(title: $title, author: $author, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewBookImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, author, thumbnailUrl);

  /// Create a copy of ReviewBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewBookImplCopyWith<_$ReviewBookImpl> get copyWith =>
      __$$ReviewBookImplCopyWithImpl<_$ReviewBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewBookImplToJson(this);
  }
}

abstract class _ReviewBook implements ReviewBook {
  const factory _ReviewBook({
    final String? title,
    final String? author,
    @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
  }) = _$ReviewBookImpl;

  factory _ReviewBook.fromJson(Map<String, dynamic> json) =
      _$ReviewBookImpl.fromJson;

  @override
  String? get title;
  @override
  String? get author;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Create a copy of ReviewBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewBookImplCopyWith<_$ReviewBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_nickname')
  String? get ownerNickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_isbn')
  String? get bookIsbn => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_id')
  String? get bookId => throw _privateConstructorUsedError;
  ReviewBook? get book => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'owner_id') String? ownerId,
    @JsonKey(name: 'owner_nickname') String? ownerNickname,
    @JsonKey(name: 'book_isbn') String? bookIsbn,
    @JsonKey(name: 'book_id') String? bookId,
    ReviewBook? book,
    String content,
    int rating,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });

  $ReviewBookCopyWith<$Res>? get book;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? ownerNickname = freezed,
    Object? bookIsbn = freezed,
    Object? bookId = freezed,
    Object? book = freezed,
    Object? content = null,
    Object? rating = null,
    Object? isPublic = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            ownerId: freezed == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                      as String?,
            ownerNickname: freezed == ownerNickname
                ? _value.ownerNickname
                : ownerNickname // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookIsbn: freezed == bookIsbn
                ? _value.bookIsbn
                : bookIsbn // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookId: freezed == bookId
                ? _value.bookId
                : bookId // ignore: cast_nullable_to_non_nullable
                      as String?,
            book: freezed == book
                ? _value.book
                : book // ignore: cast_nullable_to_non_nullable
                      as ReviewBook?,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
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

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewBookCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $ReviewBookCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
    _$ReviewImpl value,
    $Res Function(_$ReviewImpl) then,
  ) = __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'owner_id') String? ownerId,
    @JsonKey(name: 'owner_nickname') String? ownerNickname,
    @JsonKey(name: 'book_isbn') String? bookIsbn,
    @JsonKey(name: 'book_id') String? bookId,
    ReviewBook? book,
    String content,
    int rating,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });

  @override
  $ReviewBookCopyWith<$Res>? get book;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
    _$ReviewImpl _value,
    $Res Function(_$ReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? ownerNickname = freezed,
    Object? bookIsbn = freezed,
    Object? bookId = freezed,
    Object? book = freezed,
    Object? content = null,
    Object? rating = null,
    Object? isPublic = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ReviewImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        ownerId: freezed == ownerId
            ? _value.ownerId
            : ownerId // ignore: cast_nullable_to_non_nullable
                  as String?,
        ownerNickname: freezed == ownerNickname
            ? _value.ownerNickname
            : ownerNickname // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookIsbn: freezed == bookIsbn
            ? _value.bookIsbn
            : bookIsbn // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookId: freezed == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String?,
        book: freezed == book
            ? _value.book
            : book // ignore: cast_nullable_to_non_nullable
                  as ReviewBook?,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$ReviewImpl extends _Review {
  const _$ReviewImpl({
    this.id,
    @JsonKey(name: 'owner_id') this.ownerId,
    @JsonKey(name: 'owner_nickname') this.ownerNickname,
    @JsonKey(name: 'book_isbn') this.bookIsbn,
    @JsonKey(name: 'book_id') this.bookId,
    this.book,
    required this.content,
    required this.rating,
    @JsonKey(name: 'is_public') this.isPublic = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : super._();

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @override
  @JsonKey(name: 'owner_nickname')
  final String? ownerNickname;
  @override
  @JsonKey(name: 'book_isbn')
  final String? bookIsbn;
  @override
  @JsonKey(name: 'book_id')
  final String? bookId;
  @override
  final ReviewBook? book;
  @override
  final String content;
  @override
  final int rating;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Review(id: $id, ownerId: $ownerId, ownerNickname: $ownerNickname, bookIsbn: $bookIsbn, bookId: $bookId, book: $book, content: $content, rating: $rating, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerNickname, ownerNickname) ||
                other.ownerNickname == ownerNickname) &&
            (identical(other.bookIsbn, bookIsbn) ||
                other.bookIsbn == bookIsbn) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
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
    ownerId,
    ownerNickname,
    bookIsbn,
    bookId,
    book,
    content,
    rating,
    isPublic,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(this);
  }
}

abstract class _Review extends Review {
  const factory _Review({
    final String? id,
    @JsonKey(name: 'owner_id') final String? ownerId,
    @JsonKey(name: 'owner_nickname') final String? ownerNickname,
    @JsonKey(name: 'book_isbn') final String? bookIsbn,
    @JsonKey(name: 'book_id') final String? bookId,
    final ReviewBook? book,
    required final String content,
    required final int rating,
    @JsonKey(name: 'is_public') final bool isPublic,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$ReviewImpl;
  const _Review._() : super._();

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'owner_id')
  String? get ownerId;
  @override
  @JsonKey(name: 'owner_nickname')
  String? get ownerNickname;
  @override
  @JsonKey(name: 'book_isbn')
  String? get bookIsbn;
  @override
  @JsonKey(name: 'book_id')
  String? get bookId;
  @override
  ReviewBook? get book;
  @override
  String get content;
  @override
  int get rating;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
