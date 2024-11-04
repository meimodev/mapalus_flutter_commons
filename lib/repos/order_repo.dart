import 'dart:async';
import 'dart:developer' as dev;

import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

// abstract class OrderRepo {
//   Future<OrderApp> createOrder(PostOrderRequest req);
//
//   Future<List<OrderApp>> readOrders(GetOrdersRequest req);
//
//   Future<bool> updateOrder(UpdateOrderRequest req);
//
//   Stream<List<ProductOrder>?> exposeLocalProductOrders();
//
//   Stream<List<OrderApp>> readOrdersStream(GetOrdersRequest req);
//
//   Stream<OrderApp> readOrderDetailStream(String orderId);
//
//   Future<List<ProductOrder>> readLocalProductOrders();
//
//   void updateLocalProductOrders(List<ProductOrder> productOrders);
//
//   void updateLocalNote(String note);
//
//   Future<String> readLocalNote();
//
//   void clearLocalProductOrders();
//
//   void clearLocalNote();
//
//   double calculateDeliveryFee(
//     double distance,
//     DeliveryModifiers modifiers,
//     double weight,
//   );
// }

class OrderRepo /*extends OrderRepo*/ {
  //coupling with service class, remove later!!!!
  FirestoreService api = FirestoreService();
  LocalStorageService localStorageService = LocalStorageService();

  StreamController<List<ProductOrder>?> localProductOrdersStream =
      StreamController<List<ProductOrder>?>.broadcast();

  Future<OrderApp> createOrder(PostOrderRequest req) async {
    await api.createOrUpdateOrder(req);
    //TODO trigger notification
    return req.order;
  }

  Future<List<OrderApp>> readOrders(GetOrdersRequest req) async {
    final res = await api.getOrders(req);
    return res
        .map((e) => OrderApp.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Stream<List<OrderApp>> readOrdersStream(GetOrdersRequest req) {
    final orders = api.exposeOrders(req);
    return orders.map(
      (event) => event.map(OrderApp.fromJson).toList(),
    );
  }

  Stream<OrderApp> readOrderDetailStream(String orderId) {
    final order = api.exposeOrderDetails(orderId);
    return order.map(OrderApp.fromJson);
  }

  Future<bool> updateOrder(UpdateOrderRequest req) async {
    return await api.createOrUpdateOrder(
      PostOrderRequest(
        order: req.orderApp,
      ),
    );
  }

  Future<List<ProductOrder>> readLocalOrders() {
    // TODO: implement readLocalOrders
    throw UnimplementedError();
  }

  Future<List<ProductOrder>> updateLocalOrders(
      List<ProductOrder> productOrders) {
    // TODO: implement updateLocalOrders
    throw UnimplementedError();
  }

  Stream<List<ProductOrder>?> exposeLocalProductOrders() {
    return localProductOrdersStream.stream;
  }

  Future<List<ProductOrder>> readLocalProductOrders() {
    return localStorageService.readProductOrders();
  }

  void updateLocalProductOrders(List<ProductOrder> productOrders) async {
    await localStorageService.saveProductOrders(productOrders);
    // print(" productOrders $productOrders");
    localProductOrdersStream.add(productOrders);
  }

  Future<String> readLocalNote() async {
    return localStorageService.readNote();
  }

  void updateLocalNote(String note) {
    return localStorageService.saveNote(note);
  }

  double calculateDeliveryFee(
    double distance,
    DeliveryModifiers modifiers,
    double weight,
  ) {
    final fixedDistance =
        distance.toUnitMultiplicationOf(modifiers.distanceUnit);
    final weightInKg = (weight / 1000);
    final fixedWeight = weightInKg.toUnitMultiplicationOf(modifiers.weightUnit);

    dev.log(
        "distance $distance Km > fixedDistance $fixedDistance fold * (modifiers.distancePrice ${modifiers.distancePrice}) "
        "+ (weight $weight Kg > fixedWeight $fixedWeight fold * modifiers.weightPrice ${modifiers.weightPrice})");
    return fixedDistance * (modifiers.distancePrice) +
        (fixedWeight * modifiers.weightPrice);
  }

  void clearLocalNote() {
    localStorageService.deleteNote();
  }

  void clearLocalProductOrders() {
    localStorageService.deleteProductOrders();
  }

//
// Future<List<OrderApp>> readUserOrders(UserApp user) async {
//   final res = await api.readUserOrders(user.phone);
//   final data =
//       res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
//   return data;
// }

//
// Future<OrderApp> updateOrderStatus({required OrderApp order}) async {
//   late final Map<String, dynamic> timestamp;
//   switch (order.status) {
//     case OrderStatus.placed:
//       timestamp = {'order_time_stamp': FieldValue.serverTimestamp()};
//       break;
//     case OrderStatus.accepted:
//       timestamp = {'confirm_time_stamp': FieldValue.serverTimestamp()};
//       break;
//     case OrderStatus.rejected:
//       timestamp = {'confirm_time_stamp': FieldValue.serverTimestamp()};
//       break;
//     case OrderStatus.delivered:
//       timestamp = {'deliver_time_stamp': FieldValue.serverTimestamp()};
//       break;
//     case OrderStatus.finished:
//       timestamp = {'finish_time_stamp': FieldValue.serverTimestamp()};
//       break;
//     case OrderStatus.canceled:
//       timestamp = {'finish_time_stamp': FieldValue.serverTimestamp()};
//   }
//
//   final res = await api
//       .updateOrder(order.id!, {...order.toMap(), ...timestamp});
//   final data = res as Map<String, dynamic>;
//   return Future.value(OrderApp.fromMap(data));
// }

// Future<List<OrderApp>> readOrders() async {
//   final res = await api.readOrders();
//   final data =
//       res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
//   return data;
// }

// Future<List<OrderApp>> readOrdersToday() async {
//   final res = await api.readOrders();
//   final data = res.where((e) {
//     final order = OrderApp.fromMap(e as Map<String, dynamic>);
//     return order.orderTimeStamp.isSame(Jiffy.now(), unit: Unit.day);
//   });
//   return data
//       .map((e) => OrderApp.fromMap(e as Map<String, dynamic>))
//       .toList();
// }

// Stream broadcastOrders() {
//   return api.getOrdersStream();
// }
}
