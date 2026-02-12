import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class ReviewBook with _$ReviewBook {
  const factory ReviewBook({
    String? title,
    String? author,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
  }) = _ReviewBook;

  factory ReviewBook.fromJson(Map<String, dynamic> json) =>
      _$ReviewBookFromJson(json);
}

@freezed
class Review with _$Review {
  const Review._();

  const factory Review({
    String? id,
    @JsonKey(name: 'owner_id') String? ownerId,
    @JsonKey(name: 'owner_nickname') String? ownerNickname,
    @JsonKey(name: 'book_isbn') String? bookIsbn,
    @JsonKey(name: 'book_id') String? bookId,
    ReviewBook? book,
    required String content,
    required int rating,
    @JsonKey(name: 'is_public') @Default(true) bool isPublic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Review;

  String? get bookTitle => book?.title;
  String? get bookAuthor => book?.author;
  String? get bookThumbnailUrl => book?.thumbnailUrl;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
