import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

/// Bad implementation, because of the limited time span
/// the author just choose to using the coupling implementation
/// to save time but sacrifice good practices
class LocalStorageService {
  final productOrdersBox = Hive.box<String>(HiveKeys.boxProductOrders);
  final noteBox = Hive.box<String>(HiveKeys.boxNote);

  Future<void> saveProductOrders(List<ProductOrder> productOrders) async {
    final listMap =
        productOrders.map<Map<String, dynamic>>((e) => e.toJson()).toList();

    await productOrdersBox.put(
      HiveKeys.productOrders,
      jsonEncode(listMap),
    );
  }

  Future<List<ProductOrder>> readProductOrders() async {
    final String? jsonString = productOrdersBox.get(HiveKeys.productOrders);
    if (jsonString == null) {
      return [];
    }
    final List<ProductOrder> po = (jsonDecode(jsonString) as List<dynamic>)
        .map((e) => ProductOrder.fromJson(e as Map<String, dynamic>))
        .toList();
    return po;
  }

  // Future<Stream<BoxEvent>> exposeProductOrders() async {
  //   return (await _openBox(_boxNameProductOrderLocalStorageBox)).watch(key: boxKeyProductOrders);
  // }

  Future<void> updateProductOrders(List<ProductOrder> productOrders) async {
    // await productOrdersBox.clear();
    await saveProductOrders(productOrders);
  }

  void read() {}

  void deleteNote() async {
    await noteBox.clear();
  }

  void deleteProductOrders() async {
    await productOrdersBox.clear();
  }

  String readNote() {
    final String note = noteBox.get(HiveKeys.note) ?? '';
    return note;
  }

  void saveNote(String note) async {
    await noteBox.put(HiveKeys.note, note);
  }
}

class HiveKeys {
  static const String boxProductOrders = "box_product_orders";
  static const String boxNote = "box_note";

  static const String productOrders = "product_orders";
  static const String note = "note";
}

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter('cache');
    await Hive.openBox<String>(HiveKeys.boxProductOrders);
    await Hive.openBox<String>(HiveKeys.boxNote);
  }

  Future<void> close() async {
    await Hive.close();
  }
}
