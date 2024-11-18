// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAppImpl _$$UserAppImplFromJson(Map<String, dynamic> json) =>
    _$UserAppImpl(
      deviceInfo: json['device_info'] as String?,
      fcmToken: json['fcm_token'] as String?,
      documentId: json['document_id'] as String,
      lastActiveTimeStamp: const TimestampToDateTimeConverter()
          .fromJson(json['last_active_time_stamp']),
      name: json['name'] as String,
      partnerId: json['partner_id'] as String?,
      phone: json['phone'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$UserAppImplToJson(_$UserAppImpl instance) =>
    <String, dynamic>{
      'device_info': instance.deviceInfo,
      'fcm_token': instance.fcmToken,
      'document_id': instance.documentId,
      'last_active_time_stamp': _$JsonConverterToJson<dynamic, DateTime>(
          instance.lastActiveTimeStamp,
          const TimestampToDateTimeConverter().toJson),
      'name': instance.name,
      'partner_id': instance.partnerId,
      'phone': instance.phone,
      'uid': instance.uid,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
