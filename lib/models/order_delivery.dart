import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/shared/enums.dart';

part 'order_delivery.freezed.dart';

part 'order_delivery.g.dart';

@freezed
class OrderDelivery with _$OrderDelivery {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderDelivery({
    required String id,
    required double weight,
    required double price,
    required double distance,
    required DeliveryStatus status,
    @TimestampToDateTimeConverter() required DeliveryTime selectedTime,
    @TimestampToDateTimeConverter() required DateTime lastUpdate,
    required Location destination,
    UserApp? deliverBy,
  }) = _OrderDelivery;

  factory OrderDelivery.fromJson(Map<String, Object?> json) =>
      _$OrderDeliveryFromJson(json);

// OrderInfo({
//   required this.deliveryDistance,
//   required this.productCount,
//   required this.productPrice,
//   required this.deliveryWeight,
//   required this.deliveryPrice,
//   required this.deliveryCoordinateLatitude,
//   required this.deliveryCoordinateLongitude,
//   this.deliveryTime = '',
// });
//
// factory OrderInfo.fromMap(Map<String, dynamic> data) => OrderInfo(
//     productCount: data["product_count"],
//     productPrice: double.parse(data["product_price"].toString()),
//     deliveryWeight: double.parse(data["delivery_weight"].toString()),
//     deliveryPrice: double.parse(data["delivery_price"].toString()),
//     deliveryDistance: double.parse(data["delivery_distance"].toString()),
//     deliveryCoordinateLatitude:
//         double.parse(data["delivery_coordinate"]["latitude"].toString()),
//     deliveryCoordinateLongitude:
//         double.parse(data["delivery_coordinate"]["longitude"].toString()),
//     deliveryTime: data['delivery_time']);
//
// String get totalPriceF {
//   double t = deliveryPrice + productPrice;
//   return t.formatNumberToCurrency();
// }
//
// double get totalPrice {
//   return deliveryPrice + productPrice;
// }
//
// String get productPriceF {
//   return productPrice.formatNumberToCurrency();
// }
//
// String get productCountF {
//   return '$productCount Produk';
// }
//
// String get deliveryPriceF {
//   return deliveryPrice.formatNumberToCurrency();
// }
//
// String get deliveryWeightF {
//   return '$deliveryWeight Kg - $deliveryDistance Km';
// }
//
// String get deliveryCoordinateF {
//   return '$deliveryCoordinateLatitude, $deliveryCoordinateLongitude';
// }
//
// String deliveryTimeF({bool shorted = false}) {
//   var res = deliveryTime;
//   if (res.contains("BESOK") && shorted) {
//     res.substring(0, deliveryTime.length - 11);
//   }
//   return res;
// }
//
// OrderInfo copyWith({
//   int? productCount,
//   double? productPrice,
//   double? deliveryWeight,
//   double? deliveryPrice,
//   double? deliveryDistance,
//   double? deliveryCoordinateLatitude,
//   double? deliveryCoordinateLongitude,
//   String? deliveryTime,
// }) {
//   return OrderInfo(
//     productCount: productCount ?? this.productCount,
//     productPrice: productPrice ?? this.productPrice,
//     deliveryWeight: deliveryWeight ?? this.deliveryWeight,
//     deliveryPrice: deliveryPrice ?? this.deliveryPrice,
//     deliveryDistance: deliveryDistance ?? this.deliveryDistance,
//     deliveryCoordinateLatitude:
//         deliveryCoordinateLatitude ?? this.deliveryCoordinateLatitude,
//     deliveryCoordinateLongitude:
//         deliveryCoordinateLongitude ?? this.deliveryCoordinateLongitude,
//     deliveryTime: deliveryTime ?? this.deliveryTime,
//   );
// }
//
// @override
// bool operator ==(Object other) =>
//     identical(this, other) ||
//     other is OrderInfo &&
//         runtimeType == other.runtimeType &&
//         productCount == other.productCount &&
//         productPrice == other.productPrice &&
//         deliveryWeight == other.deliveryWeight &&
//         deliveryPrice == other.deliveryPrice &&
//         deliveryCoordinateLatitude == other.deliveryCoordinateLatitude &&
//         deliveryCoordinateLongitude == other.deliveryCoordinateLongitude &&
//         deliveryTime == other.deliveryTime;
//
// @override
// int get hashCode =>
//     productCount.hashCode ^
//     productPrice.hashCode ^
//     deliveryWeight.hashCode ^
//     deliveryPrice.hashCode ^
//     deliveryCoordinateLatitude.hashCode ^
//     deliveryCoordinateLongitude.hashCode ^
//     deliveryTime.hashCode;
//
// Map<String, dynamic> toMap() {
//   return {
//     'product_count': productCount,
//     'product_price': productPrice,
//     'delivery_weight': deliveryWeight,
//     'delivery_price': deliveryPrice,
//     'delivery_distance': deliveryDistance,
//     'delivery_time': deliveryTime,
//     'delivery_coordinate': {
//       'latitude': deliveryCoordinateLatitude,
//       'longitude': deliveryCoordinateLongitude,
//     },
//   };
// }
//
// @override
// String toString() {
//   return 'OrderInfo{productCount: $productCount, productPrice: $productPrice, deliveryWeight: $deliveryWeight, deliveryPrice: $deliveryPrice, deliveryDistance: $deliveryDistance, deliveryCoordinateLatitude: $deliveryCoordinateLatitude, deliveryCoordinateLongitude: $deliveryCoordinateLongitude, deliveryTime: $deliveryTime}';
// }
}
