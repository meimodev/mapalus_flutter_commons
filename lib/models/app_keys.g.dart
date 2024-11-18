// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppKeysImpl _$$AppKeysImplFromJson(Map<String, dynamic> json) =>
    _$AppKeysImpl(
      fcmProjectId: json['fcm_project_id'] as String,
      fcmServerKey: json['fcm_server_key'] as String,
      serverKey: json['server_key'] as String,
    );

Map<String, dynamic> _$$AppKeysImplToJson(_$AppKeysImpl instance) =>
    <String, dynamic>{
      'fcm_project_id': instance.fcmProjectId,
      'fcm_server_key': instance.fcmServerKey,
      'server_key': instance.serverKey,
    };
