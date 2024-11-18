// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserRequestImpl _$$GetUserRequestImplFromJson(Map<String, dynamic> json) =>
    _$GetUserRequestImpl(
      documentId: json['document_id'] as String?,
      phone: json['phone'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GetUserRequestImplToJson(
        _$GetUserRequestImpl instance) =>
    <String, dynamic>{
      'document_id': instance.documentId,
      'phone': instance.phone,
      'limit': instance.limit,
    };
