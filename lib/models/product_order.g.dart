// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductOrder _$ProductOrderFromJson(Map<String, dynamic> json) =>
    _ProductOrder(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ProductOrderToJson(_ProductOrder instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
    };
