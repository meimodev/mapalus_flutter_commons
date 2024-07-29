import '../mapalus_flutter_commons.dart';

abstract class OrderRepoContract {
  Future<OrderApp> createOrder({
    required List<ProductOrder> products,
    required UserApp user,
    required OrderInfo orderInfo,
    required String paymentMethod,
    required String note,
    int paymentAmount,
  });

  Future<OrderApp?> readOrder(String id);

  Future<List<OrderApp>> readUserOrders(UserApp user);

  Future<OrderApp> updateOrderStatus({required OrderApp order});

  Future<OrderApp> rateOrder(OrderApp order, Rating rating);
}

class OrderRepo extends OrderRepoContract {
  FirestoreService firestore = FirestoreService();

  @override
  Future<OrderApp> createOrder({
    required List<ProductOrder> products,
    required UserApp user,
    required OrderInfo orderInfo,
    required String paymentMethod,
    required String note,
    int paymentAmount = 0,
  }) async {
    final order = OrderApp(
      orderingUser: user,
      status: OrderStatus.placed,
      products: products,
      orderInfo: orderInfo,
      paymentMethod: paymentMethod,
      paymentAmount: paymentAmount,
      note: note,
    );
    await firestore.createOrder(
      order.generateId(),
      user.phone,
      order.toMap(),
    );
    //read order again with newly created id
    await Future.delayed(const Duration(seconds: 1));
    final createdOrder = await firestore.readOrder(order.id!);
    return OrderApp.fromMap(createdOrder as Map<String, dynamic>);
  }

  @override
  Future<OrderApp> rateOrder(OrderApp order, Rating rating) async {
    order.rating = rating;
    order.status = OrderStatus.finished;
    final res = await firestore.updateOrder(order.generateId(), {
      ...order.toMap(),
      'finish_time_stamp': FieldValue.serverTimestamp(),
    });
    final updatedOrder = OrderApp.fromMap(res as Map<String, dynamic>);
    return updatedOrder;
  }

  @override
  Future<OrderApp?> readOrder(String id) async {
    final res = await firestore.readOrder(id);
    if (res == null) {
      return null;
    }
    final data = res as Map<String, dynamic>;
    return OrderApp.fromMap(data);
  }

  @override
  Future<List<OrderApp>> readUserOrders(UserApp user) async {
    final res = await firestore.readUserOrders(user.phone);
    final data =
        res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
    return data;
  }

  @override
  Future<OrderApp> updateOrderStatus({required OrderApp order}) async {
    late final Map<String, dynamic> timestamp;
    switch (order.status) {
      case OrderStatus.placed:
        timestamp = {'order_time_stamp': FieldValue.serverTimestamp()};
        break;
      case OrderStatus.accepted:
        timestamp = {'confirm_time_stamp': FieldValue.serverTimestamp()};
        break;
      case OrderStatus.rejected:
        timestamp = {'confirm_time_stamp': FieldValue.serverTimestamp()};
        break;
      case OrderStatus.delivered:
        timestamp = {'deliver_time_stamp': FieldValue.serverTimestamp()};
        break;
      case OrderStatus.finished:
        timestamp = {'finish_time_stamp': FieldValue.serverTimestamp()};
        break;
      case OrderStatus.canceled:
        timestamp = {'finish_time_stamp': FieldValue.serverTimestamp()};
    }

    final res = await firestore
        .updateOrder(order.id!, {...order.toMap(), ...timestamp});
    final data = res as Map<String, dynamic>;
    return Future.value(OrderApp.fromMap(data));
  }

  Future<List<OrderApp>> readOrders() async {
    final res = await firestore.readOrders();
    final data =
        res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
    return data;
  }

  Future<List<OrderApp>> readOrdersToday() async {
    final res = await firestore.readOrders();
    final data = res.where((e) {
      final order = OrderApp.fromMap(e as Map<String, dynamic>);
      return order.orderTimeStamp.isSame(Jiffy.now(), unit: Unit.day);
    });
    return data
        .map((e) => OrderApp.fromMap(e as Map<String, dynamic>))
        .toList();
  }

  Stream broadcastOrders() {
    return firestore.getOrdersStream();
  }
}
