import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';
import 'dart:developer' as dev;

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

  dynamic firestoreLogger(
    dynamic Function() request,
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
    if (doc == null) {
      return null;
    }
    if (!doc.exists) {
      return null;
    }
    return doc.data();
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
      col.doc(_keyDocumentDeliveryTimeEnv).get,
      'checkPhoneRegistration',
    );

    if (doc == null) {
      return null;
    }
    return doc.data();
  }

  Future<bool> createOrder(
    String orderId,
    String userPhone,
    Map<String, dynamic> orderData,
  ) async {
    CollectionReference orders = fireStore.collection(_keyCollectionOrders);
    await firestoreLogger(
      () => orders.doc(orderId).set(orderData),
      'createOrder',
    );

    CollectionReference users = fireStore.collection(_keyCollectionUsers);
    await firestoreLogger(
      () => users.doc(userPhone.phoneCleanUseZero()).update({
        "orders": FieldValue.arrayUnion([orderId])
      }),
      'update user orders',
    );
    return true;
  }

  Future<Object?> readOrder(String id) async {
    final col = fireStore.collection(_keyCollectionOrders);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      col.doc(id).get,
      'readOrder',
    );

    if (doc == null) {
      return null;
    }
    if (!doc.exists) {
      return null;
    }
    return doc.data();
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
      () => orders.doc(orderId).set(data),
      'updateOrder',
    );

    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      orders.doc(orderId).get,
      'read updated order',
    );

    if (doc == null) {
      return null;
    }
    if (!doc.exists) {
      return null;
    }
    return doc.data();
  }

  Future<List<Object?>> getProducts() async {
    final products = fireStore.collection(_keyCollectionProducts);

    QuerySnapshot<Map<String, dynamic>>? docs = await firestoreLogger(
      products.get,
      'getProducts',
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

  Future<Object?> getPricingModifier() async {
    final app = fireStore.collection(_keyCollectionApp);
    DocumentSnapshot<Map<String, dynamic>>? doc = await firestoreLogger(
      app.doc('delivery_fee').get,
      'getPricingModifiers',
    );

    return doc!.data();
  }
}
