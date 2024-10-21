import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

/// Bad implementation, because of the limited time span
/// the author just choose to using the coupling implementation
/// to save time but sacrifice good practices
class LocalStorageService {
  final _boxProductOrders = Hive.box<String>(HiveKeys.boxProductOrders);
  final _boxNote = Hive.box<String>(HiveKeys.boxNote);
  final _boxUser = Hive.box<String>(HiveKeys.boxUserApp);

  Future<void> saveProductOrders(List<ProductOrder> productOrders) async {
    final listMap =
        productOrders.map<Map<String, dynamic>>((e) => e.toJson()).toList();

    await _boxProductOrders.put(
      HiveKeys.productOrders,
      jsonEncode(listMap),
    );
  }

  Future<List<ProductOrder>> readProductOrders() async {
    final String? jsonString = _boxProductOrders.get(HiveKeys.productOrders);
    if (jsonString == null) {
      return [];
    }
    final List<ProductOrder> po = (jsonDecode(jsonString) as List<dynamic>)
        .map((e) => ProductOrder.fromJson(e as Map<String, dynamic>))
        .toList();
    return po;
  }

  Future<void> updateProductOrders(List<ProductOrder> productOrders) async {
    // await productOrdersBox.clear();
    await saveProductOrders(productOrders);
  }

  void deleteNote() async {
    await _boxNote.clear();
  }

  void deleteProductOrders() async {
    await _boxProductOrders.clear();
  }

  String readNote() {
    final String note = _boxNote.get(HiveKeys.note) ?? '';
    return note;
  }

  void saveNote(String note) async {
    await _boxNote.put(HiveKeys.note, note);
  }

  UserApp? readUser() {
    final String? jsonString = _boxUser.get(HiveKeys.userApp);
    final user = jsonString == null
        ? null
        : UserApp.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
    return user;
  }

  void saveUser(UserApp user) async {
    await _boxUser.put(
      HiveKeys.userApp,
      jsonEncode(
        user.copyWith(lastActiveTimeStamp: null).toJson(),
      ),
    );
  }

  void deleteUser() async {
    await _boxUser.clear();
  }
}

class HiveKeys {
  static const String boxProductOrders = "box_product_orders";
  static const String boxNote = "box_note";
  static const String boxUserApp = "box_user_app";

  static const String productOrders = "product_orders";
  static const String note = "note";
  static const String userApp = "user_app";
}

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter('cache');
    await Hive.openBox<String>(HiveKeys.boxProductOrders);
    await Hive.openBox<String>(HiveKeys.boxNote);
    await Hive.openBox<String>(HiveKeys.boxUserApp);
  }

  Future<void> close() async {
    await Hive.close();
  }
}
