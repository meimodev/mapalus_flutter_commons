// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPartnerRequest _$GetPartnerRequestFromJson(Map<String, dynamic> json) =>
    _GetPartnerRequest(
      partnerId: json['partner_id'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GetPartnerRequestToJson(_GetPartnerRequest instance) =>
    <String, dynamic>{
      'partner_id': instance.partnerId,
      'limit': instance.limit,
    };
