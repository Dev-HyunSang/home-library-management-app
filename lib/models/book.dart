import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    String? id,
    required String title,
    required String author,
    @JsonKey(name: 'book_isbn') required String bookIsbn,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @Default(0) int status,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class BookSearchRequest with _$BookSearchRequest {
  const factory BookSearchRequest({
    @JsonKey(name: 'book_isbn') required String bookIsbn,
  }) = _BookSearchRequest;

  factory BookSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$BookSearchRequestFromJson(json);
}
