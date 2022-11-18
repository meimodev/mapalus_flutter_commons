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
    OrderApp order = OrderApp(
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
    return order;
  }

  @override
  Future<OrderApp> rateOrder(OrderApp order, Rating rating) async {
    order.rating = rating;
    order.status = OrderStatus.finished;
    order.setFinishTimeStamp(rating.ratingTimeStamp);
    final res = await firestore.updateOrder(order.generateId(), order.toMap());
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
    final res = await firestore.updateOrder(order.id!, order.toMap());
    final data =  res as Map<String, dynamic>;
    return Future.value(OrderApp.fromMap(data));
  }

  Future<List<OrderApp>> readOrders() async {
    final res = await firestore.readOrders();
    final data = res.map((e) => OrderApp.fromMap(e as Map<String, dynamic>)).toList();
    return data;
  }

  Stream broadcastOrders() {
    return firestore.getOrdersStream();
  }
}
