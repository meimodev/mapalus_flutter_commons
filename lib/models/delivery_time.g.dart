// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryTimeImpl _$$DeliveryTimeImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryTimeImpl(
      id: json['id'] as String,
      available: json['available'] as bool,
      discount: (json['discount'] as num).toDouble(),
      name: $enumDecode(_$DeliveryTimeNameEnumMap, json['name']),
      start: const StringHourToDateTimeConverter()
          .fromJson(json['start'] as String),
      end:
          const StringHourToDateTimeConverter().fromJson(json['end'] as String),
    );

Map<String, dynamic> _$$DeliveryTimeImplToJson(_$DeliveryTimeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'discount': instance.discount,
      'name': _$DeliveryTimeNameEnumMap[instance.name]!,
      'start': const StringHourToDateTimeConverter().toJson(instance.start),
      'end': const StringHourToDateTimeConverter().toJson(instance.end),
    };

const _$DeliveryTimeNameEnumMap = {
  DeliveryTimeName.now: 'NOW',
  DeliveryTimeName.morning: 'MORNING',
  DeliveryTimeName.noon: 'NOON',
  DeliveryTimeName.afternoon: 'AFTERNOON',
};
