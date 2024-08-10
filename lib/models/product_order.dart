import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'product_order.freezed.dart';

part 'product_order.g.dart';

@freezed
class ProductOrder with _$ProductOrder {
  const factory ProductOrder({
    required Product product,
    @Default(0) int quantity,
    @Default(0) double totalPrice,
  }) = _ProductOrder;

  factory ProductOrder.fromJson(Map<String, Object?> json) =>
      _$ProductOrderFromJson(json);
}
