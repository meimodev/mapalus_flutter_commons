import 'dart:developer' as dev;

import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

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
      col.doc(phone.phoneCleanUseZero).get,
      'getUser',
    );
    return doc?.data();
  }

  Future<bool> checkPhoneRegistration(String phone) async {
    final col = fireStore.collection(_keyCollectionUsers);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(phone.phoneCleanUseZero).get,
      'checkPhoneRegistration',
    );
    return doc?.exists ?? false;
  }

  Future<Object?> createOrUpdateUser(PostUserRequest req) async {
    final users = fireStore.collection(_keyCollectionUsers);

    await firestoreLogger(
      () => users.doc(req.user.documentId).set(req.user.toJson()),
      'createOrUpdateUser $req',
    );

    return req.user.toJson();
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
    await firestoreLogger(
      () => orders.doc(req.order.id).set(req.order.toJson()),
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
          .where('ordering_user.phone', isEqualTo: userPhone.phoneCleanUseZero)
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

  Future<List<Object?>> getOrders(GetOrdersRequest req) async {
    final orders = fireStore.collection(_keyCollectionOrders);

    Query<Map<String, dynamic>> query = orders;
    if (req.userApp != null) {
      query = query.where(
        'order_by.document_id',
        isEqualTo: req.userApp!.documentId,
      );
    }

    if (req.partnerId != null) {
      query = query.where('partner_id', isEqualTo: req.partnerId);
    }

    if (req.productIds.isNotEmpty) {
      query = query.where('id', whereIn: req.productIds);
    }

    if (req.dateRange != null) {
      query = query
          .where(
            'created_at',
            isGreaterThanOrEqualTo: Timestamp.fromDate(req.dateRange!.start),
          )
          .where(
            'created_at',
            isLessThanOrEqualTo: Timestamp.fromDate(req.dateRange!.end),
          );
    }

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      query.get,
      'readOrders $req',
    );

    if (docs == null) {
      return [];
    }

    return docs.docs.map((e) => e.data()).toList();
  }

  // Stream<QuerySnapshot<Object?>> getOrdersStream() {
  //   final orders = fireStore.collection(_keyCollectionOrders);
  //   return orders.snapshots();
  // }

  Stream<DocumentSnapshot<Object?>> getOrderStream(String orderId) {
    final orders = fireStore.collection(_keyCollectionOrders);
    return orders.doc(orderId).snapshots();
  }

  Future<Object?> createOrUpdateProduct(
      Map<String, dynamic> data, String id) async {
    final products = fireStore.collection(_keyCollectionProducts);

    await firestoreLogger(
      () => products.doc(id).set(data),
      'createOrUpdateProduct $data',
    );

    return data;
  }

  Future<bool> deleteProduct(String productId) async {
    final products = fireStore.collection(_keyCollectionProducts);

    await firestoreLogger(
      () => products.doc(productId).delete(),
      'deleteProduct $productId',
    );

    return true;
  }

  // Future<Object?> getPartner(String partnerId) async {
  //   CollectionReference col = fireStore.collection(_keyCollectionPartners);
  //
  //   DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
  //     col.doc(partnerId).get,
  //     'getPartner $partnerId',
  //   );
  //
  //   return doc?.data();
  // }

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
    // final app = fireStore.collection(_keyCollectionApp);
    //
    // final users = await getUsers();
    // int usersWithOrder = 0;
    // for (var u in users) {
    //   final userMap = u as Map<String, dynamic>;
    //   final userOrders = List.of(userMap["orders"]);
    //   if (userOrders.isNotEmpty) {
    //     usersWithOrder++;
    //   }
    // }
    //
    // final data = {
    //   "last_query": dateTimeString,
    //   "had_order": usersWithOrder,
    //   "verified_count": users.length,
    // };
    //
    // await firestoreLogger(
    //   () => app.doc('users_info').set(data),
    //   'queryUsersInfo',
    // );
    // return data;
    return null;
  }

  Future<List<Object?>> getUsers(GetUserRequest req) async {
    final users = fireStore.collection(_keyCollectionUsers);

    Query<Map<String, dynamic>> query = users;
    if (req.documentId != null) {
      query = query.where("document_id", isEqualTo: req.documentId);
    }

    if (req.phone != null) {
      query =
          query.where("phone", isEqualTo: req.phone!.phoneCleanUseCountryCode);
    }

    if (req.limit > 0) {
      query = query.limit(req.limit);
    }

    QuerySnapshot<Map<String, dynamic>>? res = await firestoreLogger(
      query.get,
      'getUsers $req',
    );

    return res?.docs.map((e) => e.data()).toList() ?? [];
  }

  Future<Object?> getAppAnnouncement() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      () => app.doc('announcement').get(),
      'getAppAnnouncement',
    );

    return doc!.data();
  }

  Future<List<Object?>> getPartners(GetPartnerRequest req) async {
    final partners = fireStore.collection(_keyCollectionPartners);

    Query<Map<String, dynamic>> query = partners;
    if (req.partnerId != null) {
      query = query.where('id', isEqualTo: req.partnerId);
    }

    if (req.limit > 0) {
      query = query.limit(req.limit);
    }

    QuerySnapshot<Map<String, dynamic>>? result = await firestoreLogger(
      query.get,
      'getPartners GetPartnerRequest= $req',
    );

    return result?.docs.map((e) => e.data()).toList() ?? [];
  }

  Future<Object?> updatePartner(UpdatePartnerRequest req) async {
    final partners = fireStore.collection(_keyCollectionPartners);

    await firestoreLogger(
      () => partners.doc(req.partner.id).set(req.partner.toJson()),
      'updatePartner UpdatePartnerRequest= $req',
    );

    return req.partner.toJson();
  }

  Future<List<Object?>> getProducts(GetProductRequest req) async {
    final products = fireStore.collection(_keyCollectionProducts);

    Query<Map<String, dynamic>> query = products;

    if (req.productId.isNotEmpty) {
      query = query.where("id", isEqualTo: req.productId);
    }

    if (req.partnerId.isNotEmpty) {
      query = query.where("partner_id", isEqualTo: req.partnerId);
    }

    if (req.limit > 0) {
      query = query.limit(req.limit);
    }

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      query.get,
      'getProducts $req',
    );

    return docs?.docs.map((e) => e.data()).toList() ?? [];
  }

  Stream<List<Map<String, dynamic>>> exposeProducts(GetProductRequest req) {
    var products = fireStore.collection(_keyCollectionProducts);

    Query<Map<String, dynamic>> query = products;
    if (req.partnerId.isNotEmpty) {
      query = query.where("partner_id", isEqualTo: req.partnerId);
    }

    if (req.limit > 0) {
      query =  query.limit(req.limit);
    }

    firestoreLogger(
      () {},
      'exposeProducts $req',
    );

    final res = query.snapshots().map(
          (event) => event.docs
              .map(
                (element) => element.data(),
              )
              .toList(),
        );

    return res;
  }

  Stream<List<Map<String, dynamic>>> exposeOrders(GetOrdersRequest req) {
    final orders = fireStore.collection(_keyCollectionOrders);

    Query<Map<String, dynamic>> query = orders;
    if (req.partnerId != null) {
      query = query.where("partner_id", isEqualTo: req.partnerId);
    }

    if (req.dateRange != null) {
      query = query
          .where(
            'created_at',
            isGreaterThanOrEqualTo: Timestamp.fromDate(req.dateRange!.start),
          )
          .where(
            'created_at',
            isLessThanOrEqualTo: Timestamp.fromDate(req.dateRange!.end),
          );
    }

    firestoreLogger(
      () {},
      'exposeOrders $req',
    );

    return query.snapshots().map(
          (event) => event.docs
              .map(
                (element) => element.data(),
              )
              .toList(),
        );
  }

  Stream<Map<String, dynamic>> exposeOrderDetails(String orderId) {
    final orders = fireStore.collection(_keyCollectionOrders);
    final order = orders.doc(orderId);

    firestoreLogger(
      () {},
      'exposeOrderDetails $orderId',
    );
    return order.snapshots().map((event) => event.data() ?? {});
  }

  Future<List<String>> getProductCategories() async {
    final apps = fireStore.collection(_keyCollectionApp);
    final DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
        () => apps.doc("categories").get(), 'getProductCategories');

    final res = doc?.data();
    if (res == null) {
      return [];
    }
    final List<dynamic> data = res['data'];
    return data.map((e) => e.toString()).toList();
  }
}
