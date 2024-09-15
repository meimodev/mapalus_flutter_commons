import 'dart:developer' as dev;

import '../mapalus_flutter_commons.dart';

class FirestoreService {
  FirebaseFirestore fireStore;

  FirestoreService() : fireStore = FirebaseFirestore.instance;

  final String _keyCollectionApp = 'app';
  final String _keyCollectionDeliveryTime = 'delivery_time';
  final String _keyCollectionOrders = 'orders';
  final String _keyCollectionPartners = 'partners';
  final String _keyCollectionProducts = 'products';
  final String _keyCollectionUsers = 'users';

  final String _keyDocumentDeliveryTimeEnv = '-env';

  dynamic firestoreLogger<T>(
    T Function() request,
    String? operation,
  ) async {
    operation = operation ?? 'logging';
    try {
      final res = request();
      dev.log('[FIRESTORE] $operation SUCCESS');
      return res;
    } catch (e) {
      dev.log('[FIRESTORE] $operation ERROR');
      dev.log(e.toString());
      return null;
    }
  }

  Future<Object?> getUser(String phone) async {
    final col = fireStore.collection(_keyCollectionUsers);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(phone.phoneCleanUseZero()).get,
      'getUser',
    );
    return doc?.data();
  }

  Future<bool> checkPhoneRegistration(String phone) async {
    final col = fireStore.collection(_keyCollectionUsers);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(phone.phoneCleanUseZero()).get,
      'checkPhoneRegistration',
    );
    return doc?.exists ?? false;
  }

  Future<Object?> createUser(String phone, Map<String, dynamic> data) async {
    final users = fireStore.collection(_keyCollectionUsers);

    await firestoreLogger(
      () => users.doc(phone.phoneCleanUseZero()).set(data),
      'createUser',
    );

    return data;
  }

  Future<Object?> getDeliveryTimes() async {
    CollectionReference col = fireStore.collection(_keyCollectionDeliveryTime);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      () => col
          .doc(_keyDocumentDeliveryTimeEnv)
          .get(const GetOptions(source: Source.server)),
      'getDeliveryTimes',
    );
    return doc?.data();
  }

  Future<bool> createOrUpdateOrder(PostOrderRequest req) async {
    CollectionReference orders = fireStore.collection(_keyCollectionOrders);
    final order = req.order;
    await firestoreLogger(
      () => orders.doc(order.id).set(order.toJson()),
      'createOrUpdateOrder $req',
    );
    return true;
  }

  Future<Object?> readOrder(String id) async {
    final col = fireStore.collection(_keyCollectionOrders);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(id).get,
      'readOrder',
    );

    return doc?.data();
  }

  Future<List<Object?>> readUserOrders(String userPhone) async {
    final col = fireStore.collection(_keyCollectionOrders);
    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      col
          .where('ordering_user.phone',
              isEqualTo: userPhone.phoneCleanUseZero())
          .get,
      'readUserOrders',
    );

    if (docs == null) {
      return [];
    }

    final res = docs.docs.map((e) => e.data()).toList();
    return res;
  }

  Future<Object?> updateOrder(String orderId, Map<String, dynamic> data) async {
    final orders = fireStore.collection(_keyCollectionOrders);

    await firestoreLogger(
      () => orders.doc(orderId).set(data, SetOptions(merge: true)),
      'updateOrder',
    );

    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      orders.doc(orderId).get,
      'read updated order',
    );

    return doc?.data();
  }

  Future<List<Object?>> readProducts() async {
    final products = fireStore.collection(_keyCollectionProducts);

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      products.get,
      'readProducts',
    );

    final res = docs!.docs.map((e) => e.data()).toList();
    return res;
  }

  Future<Object?> getAppVersion({isMapalus = true}) async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc(isMapalus ? 'mapalus' : "mapalus_partner").get,
      'getAppVersion isMapalus = $isMapalus',
    );
    return doc!.data();
  }

  Future<Object?> getAppKeys() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc('keys').get,
      'getAppKeys',
    );

    return doc!.data();
  }

  Future<Object?> getPartnerKey(String id) async {
    final partners = fireStore.collection(_keyCollectionPartners);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      partners.doc(id).get,
      'getPartnerKey',
    );
    return doc!.data();
  }

  Future<bool> deleteUser(String id) async {
    final users = fireStore.collection(_keyCollectionUsers);

    await firestoreLogger(
      () => users.doc(id).delete(),
      'deleteUser',
    );

    return true;
  }

  Future<Object?> getDeliveryModifiers() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc('delivery_fee').get,
      'getDeliveryModifiers',
    );

    return doc!.data();
  }

  Future<List<Object?>> readOrders(GetOrdersRequest req) async {
    final col = fireStore.collection(_keyCollectionOrders);

    if (req.userApp != null) {
      col.where(
        'order_by.id',
        isEqualTo: req.userApp!.id,
      );
    }

    if (req.partner != null) {
      col.where('partner.id', isEqualTo: req.partner!.id);
    }

    if (req.productIds.isNotEmpty) {
      col.where('id', whereIn: req.productIds);
    }

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      col.get,
      'readOrders $req',
    );

    if (docs == null) {
      return [];
    }

    final res = docs.docs.map((e) => e.data()).toList();
    return res;
  }

  Stream<QuerySnapshot<Object?>> getOrdersStream() {
    final orders = fireStore.collection(_keyCollectionOrders);
    return orders.snapshots();
  }

  Stream<DocumentSnapshot<Object?>> getOrderStream(String orderId) {
    final orders = fireStore.collection(_keyCollectionOrders);
    return orders.doc(orderId).snapshots();
  }

  Future<Object?> updateProduct(String id, Map<String, dynamic> data) async {
    final col = fireStore.collection(_keyCollectionProducts);
    await firestoreLogger(
      () => col.doc(id).set(data),
      'updateProduct',
    );
    return data;
  }

  Future<Object?> createProduct(Map<String, dynamic> data) async {
    final products = fireStore.collection(_keyCollectionProducts);

    await firestoreLogger(
      () async => await products.add(data),
      'createProduct',
    );

    return data;
  }

  Future<bool> deleteProduct(String productId) async {
    final products = fireStore.collection(_keyCollectionProducts);

    await firestoreLogger(
      () => products.doc(productId).delete(),
      'deleteProduct',
    );

    final app = fireStore.collection(_keyCollectionApp);
    await firestoreLogger(
      () => app.doc('product').set({'count': FieldValue.increment(-1)}),
      'decrement product count',
    );
    return true;
  }

  Future<Object?> readPartner(String partnerId) async {
    CollectionReference col = fireStore.collection(_keyCollectionPartners);

    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(partnerId).get,
      'getPartner',
    );

    return doc?.data();
  }

  Future<Object?> readDeliveryModifiers() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc('delivery_fee').get,
      'readDeliveryModifiers',
    );
    return doc?.data();
  }

  Future<bool> createDeliveryModifiers(Map<String, dynamic> data) async {
    final app = fireStore.collection(_keyCollectionApp);
    await firestoreLogger(
      () => app.doc('delivery_fee').set(data),
      'createDeliveryModifiers',
    );
    return true;
  }

  Future<Object?> getUsersInfo() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc('users_info').get,
      'getUsersInfo',
    );
    return doc?.data();
  }

  Future<Object?> queryUsersInfo(String dateTimeString) async {
    final app = fireStore.collection(_keyCollectionApp);

    final users = await getUsers();
    int usersWithOrder = 0;
    for (var u in users) {
      final userMap = u as Map<String, dynamic>;
      final userOrders = List.of(userMap["orders"]);
      if (userOrders.isNotEmpty) {
        usersWithOrder++;
      }
    }

    final data = {
      "last_query": dateTimeString,
      "had_order": usersWithOrder,
      "verified_count": users.length,
    };

    await firestoreLogger(
      () => app.doc('users_info').set(data),
      'queryUsersInfo',
    );
    return data;
  }

  Future<List<Object?>> getUsers() async {
    final col = fireStore.collection(_keyCollectionUsers);

    QuerySnapshot<Map<String, dynamic>>? users = await firestoreLogger(
      col.get,
      'getUsers',
    );

    List<Object?> res = [];
    for (var user in users!.docs) {
      res.add(user.data());
    }

    return res;
  }

  Future<void> updateUserDeviceInfo(
    String id,
    String deviceInfoString,
  ) async {
    final users = fireStore.collection(_keyCollectionUsers);
    await firestoreLogger(
      () => users.doc(id).set(
        {"device_info": deviceInfoString},
        SetOptions(merge: true),
      ),
      'updateUserDeviceInfo',
    );
  }

  Future<void> updateFcmToken(
    String phone,
    String? token,
  ) async {
    final users = fireStore.collection(_keyCollectionUsers);
    await firestoreLogger(
      () => users.doc(phone.phoneCleanUseZero()).set(
        {"fcm_token": token},
        SetOptions(merge: true),
      ),
      'updateFcmToken',
    );
  }

  Future<void> updateLastActiveTimeStamp(String phone) async {
    final users = fireStore.collection(_keyCollectionUsers);
    await firestoreLogger(
      () => users.doc(phone.phoneCleanUseZero()).set(
        {"last_active_time_stamp": FieldValue.serverTimestamp()},
        SetOptions(merge: true),
      ),
      'updateLastActiveTimeStamp',
    );
  }

  Future<Object?> getAppAnnouncement() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      () => app.doc('announcement').get(
            const GetOptions(source: Source.server),
          ),
      'getAppAnnouncement',
    );

    return doc!.data();
  }

  Future<List<Object?>> getPartners(GetPartnerRequest req) async {
    final col = fireStore.collection(_keyCollectionPartners);

    if (req.partnerId.isNotEmpty) {
      col.where('id', isEqualTo: req.partnerId);
    }
    if (req.limit > 0) {
      col.limit(req.limit);
    }

    QuerySnapshot<Map<String, dynamic>>? users = await firestoreLogger(
      col.get,
      'getPartners GetPartnerRequest= $req',
    );

    return users?.docs.map((e) => e.data()).toList() ?? [];
  }

  Future<List<Object?>> getProducts(GetProductRequest req) async {
    final products = fireStore.collection(_keyCollectionProducts);

    if (req.partnerId.isNotEmpty) {
      products.where("partner_id", isEqualTo: req.partnerId);
    }

    if (req.limit > 0) {
      products.limit(req.limit);
    }

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      products.get,
      'getProducts $req',
    );

    return docs?.docs.map((e) => e.data()).toList() ?? [];
  }

  Stream<List<Map<String, dynamic>>> exposeProducts(GetProductRequest req) {
    final products = fireStore.collection(_keyCollectionProducts);

    if (req.partnerId.isNotEmpty) {
      products.where("partner_id", isEqualTo: req.partnerId);
    }

    if (req.limit > 0) {
      products.limit(req.limit);
    }

    firestoreLogger(
      () {},
      'exposeProducts $req',
    );

    final res = products.snapshots().map(
          (event) => event.docs
              .map(
                (element) => element.data(),
              )
              .toList(),
        );

    return res;
  }
}
