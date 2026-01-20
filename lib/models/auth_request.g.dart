// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterRequestImpl(
  nickName: json['nick_name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  isPublished: json['is_published'] as bool? ?? true,
  isTermsAgreed: json['is_terms_agreed'] as bool? ?? false,
);

Map<String, dynamic> _$$RegisterRequestImplToJson(
  _$RegisterRequestImpl instance,
) => <String, dynamic>{
  'nick_name': instance.nickName,
  'email': instance.email,
  'password': instance.password,
  'is_published': instance.isPublished,
  'is_terms_agreed': instance.isTermsAgreed,
};
