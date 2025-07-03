// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Partner _$PartnerFromJson(Map<String, dynamic> json) => _Partner(
  id: json['id'] as String,
  name: json['name'] as String,
  image: json['image'] as String? ?? "",
  fcmToken: json['fcm_token'] as String? ?? "",
  lastActiveTimeStamp: const TimestampToDateTimeConverter().fromJson(
    json['last_active_time_stamp'],
  ),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PartnerToJson(_Partner instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'fcm_token': instance.fcmToken,
  'last_active_time_stamp': const TimestampToDateTimeConverter().toJson(
    instance.lastActiveTimeStamp,
  ),
  'location': instance.location?.toJson(),
};
