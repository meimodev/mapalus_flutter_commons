// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryModifiersImpl _$$DeliveryModifiersImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryModifiersImpl(
      distancePrice: (json['distance_price'] as num?)?.toDouble() ?? 0,
      distanceUnit: (json['distance_unit'] as num?)?.toDouble() ?? 0,
      weightPrice: (json['weight_price'] as num?)?.toDouble() ?? 0,
      weightUnit: (json['weight_unit'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$DeliveryModifiersImplToJson(
        _$DeliveryModifiersImpl instance) =>
    <String, dynamic>{
      'distance_price': instance.distancePrice,
      'distance_unit': instance.distanceUnit,
      'weight_price': instance.weightPrice,
      'weight_unit': instance.weightUnit,
    };
