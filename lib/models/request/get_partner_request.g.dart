// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPartnerRequestImpl _$$GetPartnerRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPartnerRequestImpl(
      partnerId: json['partner_id'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GetPartnerRequestImplToJson(
        _$GetPartnerRequestImpl instance) =>
    <String, dynamic>{
      'partner_id': instance.partnerId,
      'limit': instance.limit,
    };
