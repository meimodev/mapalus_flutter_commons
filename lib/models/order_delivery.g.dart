// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDeliveryImpl _$$OrderDeliveryImplFromJson(Map<String, dynamic> json) =>
    _$OrderDeliveryImpl(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      weight: (json['weight'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      status: $enumDecode(_$DeliveryStatusEnumMap, json['status']),
      selectedTime:
          DeliveryTime.fromJson(json['selected_time'] as Map<String, dynamic>),
      selectedDate:
          const TimestampToDateTimeConverter().fromJson(json['selected_date']),
      lastUpdate:
          const TimestampToDateTimeConverter().fromJson(json['last_update']),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      deliverBy: json['deliver_by'] == null
          ? null
          : UserApp.fromJson(json['deliver_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderDeliveryImplToJson(_$OrderDeliveryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'weight': instance.weight,
      'price': instance.price,
      'distance': instance.distance,
      'status': _$DeliveryStatusEnumMap[instance.status]!,
      'selected_time': instance.selectedTime.toJson(),
      'selected_date':
          const TimestampToDateTimeConverter().toJson(instance.selectedDate),
      'last_update':
          const TimestampToDateTimeConverter().toJson(instance.lastUpdate),
      'destination': instance.destination.toJson(),
      'deliver_by': instance.deliverBy?.toJson(),
    };

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.placed: 'PLACED',
  DeliveryStatus.picked: 'PICKED',
  DeliveryStatus.delivered: 'DELIVERED',
  DeliveryStatus.canceled: 'CANCELED',
};
