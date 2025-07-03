// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rating _$RatingFromJson(Map<String, dynamic> json) => _Rating(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  userId: json['user_id'] as String,
  message: json['message'] as String? ?? "",
  rate: (json['rate'] as num?)?.toDouble() ?? 0,
  createdAt: const TimestampToDateTimeConverter().fromJson(json['created_at']),
);

Map<String, dynamic> _$RatingToJson(_Rating instance) => <String, dynamic>{
  'id': instance.id,
  'order_id': instance.orderId,
  'user_id': instance.userId,
  'message': instance.message,
  'rate': instance.rate,
  'created_at': const TimestampToDateTimeConverter().toJson(instance.createdAt),
};
