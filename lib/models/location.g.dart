// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
  longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
  place: json['place'] as String,
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'place': instance.place,
};
