// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherImpl _$$VoucherImplFromJson(Map<String, dynamic> json) =>
    _$VoucherImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$VoucherImplToJson(_$VoucherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
    };
