// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProductRequest _$GetProductRequestFromJson(Map<String, dynamic> json) =>
    _GetProductRequest(
      productId: json['product_id'] as String? ?? '',
      searchText: json['search_text'] as String? ?? '',
      partnerId: json['partner_id'] as String? ?? '',
      limit: (json['limit'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GetProductRequestToJson(_GetProductRequest instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'search_text': instance.searchText,
      'partner_id': instance.partnerId,
      'limit': instance.limit,
    };
