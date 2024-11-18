// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      method: $enumDecode(_$PaymentMethodEnumMap, json['method']),
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      lastUpdate:
          const TimestampToDateTimeConverter().fromJson(json['last_update']),
      amount: (json['amount'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'method': _$PaymentMethodEnumMap[instance.method]!,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'last_update':
          const TimestampToDateTimeConverter().toJson(instance.lastUpdate),
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'CASH',
  PaymentMethod.transfer: 'TRANSFER',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.placed: 'PLACED',
  PaymentStatus.delivered: 'PAID',
  PaymentStatus.expired: 'EXPIRED',
  PaymentStatus.canceled: 'CANCELED',
};
