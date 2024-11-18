// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderAppImpl _$$OrderAppImplFromJson(Map<String, dynamic> json) =>
    _$OrderAppImpl(
      id: json['id'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnerId: json['partner_id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      lastUpdate:
          const TimestampToDateTimeConverter().fromJson(json['last_update']),
      createdAt:
          const TimestampToDateTimeConverter().fromJson(json['created_at']),
      note: json['note'] as String? ?? '',
      orderBy: UserApp.fromJson(json['order_by'] as Map<String, dynamic>),
      payment: Payment.fromJson(json['payment'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : OrderDelivery.fromJson(json['delivery'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      voucher: json['voucher'] == null
          ? null
          : Voucher.fromJson(json['voucher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderAppImplToJson(_$OrderAppImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products.map((e) => e.toJson()).toList(),
      'partner_id': instance.partnerId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'last_update':
          const TimestampToDateTimeConverter().toJson(instance.lastUpdate),
      'created_at':
          const TimestampToDateTimeConverter().toJson(instance.createdAt),
      'note': instance.note,
      'order_by': instance.orderBy.toJson(),
      'payment': instance.payment.toJson(),
      'delivery': instance.delivery?.toJson(),
      'rating': instance.rating?.toJson(),
      'voucher': instance.voucher?.toJson(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.placed: 'PLACED',
  OrderStatus.accepted: 'ACCEPTED',
  OrderStatus.rejected: 'REJECTED',
  OrderStatus.delivered: 'DELIVERED',
  OrderStatus.finished: 'FINISHED',
  OrderStatus.canceled: 'CANCELED',
};
