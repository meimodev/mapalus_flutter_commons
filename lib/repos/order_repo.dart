import 'dart:async';

import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

abstract class OrderRepo {
  Future<OrderApp> createOrder(PostOrderRequest req);

  Future<List<OrderApp>> readOrders(GetOrdersRequest req);

  Future<OrderApp> updateOrder(UpdateOrderRequest req);

  Stream<List<ProductOrder>?> exposeLocalProductOrders();

  Future<List<ProductOrder>> readLocalProductOrders();

  void updateLocalProductOrders(List<ProductOrder> productOrders);

  void updateLocalNote(String note);

  Future<String> readLocalNote();

  double calculateDeliveryFee(
    Location origin,
    Location destination,
    DeliveryModifiers modifiers,
    double weight,
  );
}

class OrderRepoImpl extends OrderRepo {
  //coupling with service class, remove later!!!!
  FirestoreService api = FirestoreService();
  LocalStorageService localStorageService = LocalStorageService();

  StreamController<List<ProductOrder>?> localProductOrdersStream =
      StreamController<List<ProductOrder>?>.broadcast();

  @override
  Future<OrderApp> createOrder(PostOrderRequest req) async {
    // //Later just accept orders object model then send request that
    // final order = OrderApp(
    //   orderingUser: user,
    //   status: OrderStatus.placed,
    //   products: products,
    //   orderInfo: orderInfo,
    //   paymentMethod: paymentMethod,
    //   paymentAmount: paymentAmount,
    //   note: note,
    // );
    // await api.createOrder(
    //   order.generateId(),
    //   user.phone,
    //   order.toMap(),
    // );
    // //read order again with newly created id
    // await Future.delayed(const Duration(seconds: 1));
    // final createdOrder = await api.readOrder(order.id!);
    // return OrderApp.fromMap(createdOrder as Map<String, dynamic>);
    // TODO: implement updateOrder
    throw UnimplementedError();
  }

  // // @override
  // Future<OrderApp> rateOrder(OrderApp order, Rating rating) async {
  //   // order.rating = rating;
  //   order.status = OrderStatus.finished;
  //   final res = await api.updateOrder(order.generateId(), {
  //     ...order.toMap(),
  //     'finish_time_stamp': FieldValue.serverTimestamp(),
  //   });
  //   final updatedOrder = OrderApp.fromMap(res as Map<String, dynamic>);
  //   return updatedOrder;
  // }

  @override
  Future<List<OrderApp>> readOrders(GetOrdersRequest req) async {
    // final res = await api.readOrder(id);
    // if (res == null) {
    //   return null;
    // }
    // final data = res as Map<String, dynamic>;
    // return OrderApp.fromMap(data);
    // TODO: implement updateOrder
    throw UnimplementedError();
  }

  @override
  Future<OrderApp> updateOrder(UpdateOrderRequest req) {
    // TODO: implement updateOrder
    throw UnimplementedError();
  }

  @override
  Future<List<ProductOrder>> readLocalOrders() {
    // TODO: implement readLocalOrders
    throw UnimplementedError();
  }

  @override
  Future<List<ProductOrder>> updateLocalOrders(
      List<ProductOrder> productOrders) {
    // TODO: implement updateLocalOrders
    throw UnimplementedError();
  }

  @override
  Stream<List<ProductOrder>?> exposeLocalProductOrders() {
    return localProductOrdersStream.stream;
  }

  @override
  Future<List<ProductOrder>> readLocalProductOrders() {
    return localStorageService.readProductOrders();
  }

  @override
  void updateLocalProductOrders(List<ProductOrder> productOrders) async {
    await localStorageService.updateProductOrders(productOrders);
    localProductOrdersStream.add(productOrders);
  }

  @override
  Future<String> readLocalNote() async {
    return localStorageService.readNote();
  }

  @override
  void updateLocalNote(String note) {
    return localStorageService.saveNote(note);
  }

  @override
  double calculateDeliveryFee(
    Location origin,
    Location destination,
    DeliveryModifiers modifiers,
    double weight,
  )  {
    final distance = Utils.calculateDistance(
      originLatitude: origin.latitude,
      originLongitude: origin.longitude,
      destinationLatitude: destination.latitude,
      destinationLongitude: destination.longitude,
    );

    final fixedDistance =
        distance.toUnitMultiplicationOf(modifiers.distanceUnit);
    final fixedWeight = weight.toUnitMultiplicationOf(modifiers.weightUnit);

    return fixedDistance * (modifiers.distancePrice) +
        (fixedWeight * modifiers.weightPrice);
  }

// @override
// Future<List<OrderApp>> readUserOrders(UserApp user) async {
//   final res = await api.readUserOrders(user.phone);
//   final data =
//       res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
//   return data;
// }

// @override
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
