// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Voucher _$VoucherFromJson(Map<String, dynamic> json) => _Voucher(
  id: json['id'] as String,
  code: json['code'] as String,
  discount: (json['discount'] as num).toDouble(),
);

Map<String, dynamic> _$VoucherToJson(_Voucher instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'discount': instance.discount,
};
