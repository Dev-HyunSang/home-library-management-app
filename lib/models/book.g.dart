// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
  id: json['id'] as String?,
  title: json['title'] as String,
  author: json['author'] as String,
  bookIsbn: json['book_isbn'] as String,
  thumbnailUrl: json['thumbnail_url'] as String?,
  status: (json['status'] as num?)?.toInt() ?? 0,
  userId: json['user_id'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'book_isbn': instance.bookIsbn,
      'thumbnail_url': instance.thumbnailUrl,
      'status': instance.status,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$BookSearchRequestImpl _$$BookSearchRequestImplFromJson(
  Map<String, dynamic> json,
) => _$BookSearchRequestImpl(bookIsbn: json['book_isbn'] as String);

Map<String, dynamic> _$$BookSearchRequestImplToJson(
  _$BookSearchRequestImpl instance,
) => <String, dynamic>{'book_isbn': instance.bookIsbn};
