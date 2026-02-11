import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    String? id,
    @JsonKey(name: 'owner_id') String? ownerId,
    @JsonKey(name: 'owner_nickname') String? ownerNickname,
    @JsonKey(name: 'book_isbn') String? bookIsbn,
    @JsonKey(name: 'book_id') String? bookId,
    required String content,
    required int rating,
    @JsonKey(name: 'is_public') @Default(true) bool isPublic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
