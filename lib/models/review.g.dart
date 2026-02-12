// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewBookImpl _$$ReviewBookImplFromJson(Map<String, dynamic> json) =>
    _$ReviewBookImpl(
      title: json['title'] as String?,
      author: json['author'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
    );

Map<String, dynamic> _$$ReviewBookImplToJson(_$ReviewBookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'thumbnail_url': instance.thumbnailUrl,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: json['id'] as String?,
  ownerId: json['owner_id'] as String?,
  ownerNickname: json['owner_nickname'] as String?,
  bookIsbn: json['book_isbn'] as String?,
  bookId: json['book_id'] as String?,
  book: json['book'] == null
      ? null
      : ReviewBook.fromJson(json['book'] as Map<String, dynamic>),
  content: json['content'] as String,
  rating: (json['rating'] as num).toInt(),
  isPublic: json['is_public'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'owner_nickname': instance.ownerNickname,
      'book_isbn': instance.bookIsbn,
      'book_id': instance.bookId,
      'book': instance.book,
      'content': instance.content,
      'rating': instance.rating,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
