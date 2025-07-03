// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetUserRequest _$GetUserRequestFromJson(Map<String, dynamic> json) =>
    _GetUserRequest(
      documentId: json['document_id'] as String?,
      phone: json['phone'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GetUserRequestToJson(_GetUserRequest instance) =>
    <String, dynamic>{
      'document_id': instance.documentId,
      'phone': instance.phone,
      'limit': instance.limit,
    };
