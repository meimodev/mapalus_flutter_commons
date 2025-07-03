import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

part 'order_app.freezed.dart';
part 'order_app.g.dart';

@freezed
abstract class OrderApp with _$OrderApp {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderApp({
    required String id,
    required List<ProductOrder> products,
    required String partnerId,
    required OrderStatus status,
    @TimestampToDateTimeConverter() required DateTime lastUpdate,
    @TimestampToDateTimeConverter() required DateTime createdAt,
    @Default('') String note,
    required UserApp orderBy,
    required Payment payment,
    OrderDelivery? delivery,
    Rating? rating,
    Voucher? voucher,
  }) = _OrderApp;

  factory OrderApp.fromJson(Map<String, Object?> json) =>
      _$OrderAppFromJson(json);
}

// OrderApp({
//   deliveringUser,
//   required this.orderingUser,
//   required this.products,
//   required this.status,
//   required this.orderInfo,
//   required this.paymentMethod,
//   this.paymentAmount = 0,
//   required this.note,
// });
//
// OrderApp.fromMap(Map<String, dynamic> data)
//     :
//       // deliveryInfo = DeliveryInfo.fromMap(data['delivery_info']),
//       id = data['id'],
//       orderInfo = OrderInfo.fromMap(data['order_info']),
//       status = OrderStatus.values.firstWhere(
//         (element) => element.name == data['status'],
//       ),
//       _orderTimeStamp = data['order_time_stamp'] != null
//           ? (data['order_time_stamp'] as Timestamp).toDate()
//           : Jiffy.parse(data['order_time'].toString(), pattern: Values.formatRawDate)
//               .dateTime,
//       _finishTimeStamp = data['finish_time_stamp'] != null
//           ? (data['finish_time_stamp'] as Timestamp).toDate()
//           : data['finish_time'].toString().isEmpty ||
//                   data['finish_time'] == null
//               ? null
//               : Jiffy.parse(data['finish_time'].toString(),pattern: Values.formatRawDate)
//                   .dateTime,
//       _confirmTimeStamp = data['confirm_time_stamp'] != null
//           ? (data['confirm_time_stamp'] as Timestamp).toDate()
//           : null,
//       _deliverTimeStamp = data['deliver_time_stamp'] != null
//           ? (data['deliver_time_stamp'] as Timestamp).toDate()
//           : null,
//       products = List<ProductOrder>.from(
//         (data['products'] as List<dynamic>).map(
//           (e) => ProductOrder.fromJson(e),
//         ),
//       ),
//       // rating = data['rating'] != null ? Rating.fromMap(data["rating"]) : null,
//       orderingUser = UserApp.fromJson(data['ordering_user']),
//       deliveringUser = data['delivering_user'] != null
//           ? UserApp.fromJson(data['delivering_user'])
//           : null,
//       paymentMethod = data['payment_method'] ?? '',
//       paymentAmount = data['payment_amount'] ?? 0,
//       note = data['note'] ?? '';
//
// String generateId() {
//   if (id != null) {
//     return id!;
//   }
//
//   final now = Jiffy.now();
//   final random = Random().nextInt(9999);
//   final res = '${now.format(pattern:'yyyyMMddHHmm')}$random';
//   id = res;
//   return res;
// }
//
// String get idMinified {
//   return id!.replaceRange(0, 12, '');
// }
//
// Jiffy get orderTimeStamp {
//   return Jiffy.parseFromDateTime(_orderTimeStamp!);
// }
//
// Jiffy? get finishTimeStamp {
//   if (_finishTimeStamp != null) {
//     return Jiffy.parseFromDateTime(_finishTimeStamp!);
//   }
//   return null;
// }
//
// Jiffy? get confirmTimeStamp {
//   if (_confirmTimeStamp != null) {
//     return Jiffy.parseFromDateTime(_confirmTimeStamp!);
//   }
//   return null;
// }
//
// Jiffy? get deliverTimeStamp {
//   if (_deliverTimeStamp != null) {
//     return Jiffy.parseFromDateTime(_deliverTimeStamp!);
//   }
//   return null;
// }
//
// String get finishTimeStampF {
//   if (finishTimeStamp == null) {
//     return "-";
//   }
//   return finishTimeStamp!.format(pattern:"E, ddd MMM yyyy");
// }
//
// String get paymentMethodF {
//   if (paymentMethod == "CASH") {
//     return "Bayar ditempat ${paymentAmount.formatNumberToCurrency()}";
//   }
//   return paymentMethod;
// }
//
// @override
// String toString() {
//   return 'Order{id: $id, products: $products, '
//       'status: $status, _orderTimeStamp: $_orderTimeStamp, '
//       '_finishTimeStamp: $_finishTimeStamp, '
//       'orderingUser: $orderingUser, deliveringUser: $deliveringUser, '
//       'orderInfo: $orderInfo, paymentMethod: $paymentMethod, '
//       'paymentAmount: $paymentAmount, note: $note}';
// }
//
// Map<String, dynamic> toMap() {
//   var productMaps = <Map<String, dynamic>>[];
//   for (ProductOrder element in products) {
//     productMaps.add(element.toJson());
//   }
//   return {
//     'id': id,
//     'products': productMaps,
//     // 'delivery_info': deliveryInfo.toMap(),
//     'order_info': orderInfo.toMap(),
//     'status': status.name,
//     // 'rating': rating?.toMap(),
//     'ordering_user': orderingUser.toJson(),
//     'delivering_user': deliveringUser?.toJson(),
//     'payment_method': paymentMethod,
//     'payment_amount': paymentAmount,
//     'note': note,
//   };
// }
