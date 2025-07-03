// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  category: json['category'] as String? ?? "",
  customPrice: json['custom_price'] as bool? ?? false,
  description: json['description'] as String? ?? "",
  id: json['id'] as String? ?? "",
  image: json['image'] as String? ?? "",
  minimumPrice: (json['minimum_price'] as num?)?.toDouble() ?? 0,
  name: json['name'] as String? ?? "",
  partnerId: json['partner_id'] as String? ?? "",
  price: (json['price'] as num?)?.toDouble() ?? 0,
  status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']),
  type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']),
  unit: $enumDecodeNullable(_$ProductUnitEnumMap, json['unit']),
  weight: (json['weight'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'category': instance.category,
  'custom_price': instance.customPrice,
  'description': instance.description,
  'id': instance.id,
  'image': instance.image,
  'minimum_price': instance.minimumPrice,
  'name': instance.name,
  'partner_id': instance.partnerId,
  'price': instance.price,
  'status': _$ProductStatusEnumMap[instance.status],
  'type': _$ProductTypeEnumMap[instance.type],
  'unit': _$ProductUnitEnumMap[instance.unit],
  'weight': instance.weight,
};

const _$ProductStatusEnumMap = {
  ProductStatus.available: 'AVAILABLE',
  ProductStatus.unavailable: 'UNAVAILABLE',
};

const _$ProductTypeEnumMap = {
  ProductType.food: 'FOOD',
  ProductType.grocery: 'GROCERY',
  ProductType.laundry: 'LAUNDRY',
};

const _$ProductUnitEnumMap = {
  ProductUnit.serve: 'SERVE',
  ProductUnit.kilogram: 'KILOGRAM',
};
