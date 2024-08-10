import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

/// Bad implementation, because of the limited time span
/// the author just choose to using the coupling implementation
/// to save time but sacrifice good practices
class LocalStorageService {
  static const String _boxNameProductOrderLocalStorageBox =
      "box_name_product_order_local_storage_box";

  static const String boxKeyProductOrders = "box_key_product_orders";

  Future<Box> _openBox(String name)  async {
    if (Hive.isBoxOpen(name)) {
      return Hive.box(name);
    }
    return await Hive.openBox(name);
  }

  Future<void> saveProductOrders(List<ProductOrder> productOrders) async {
    final box = await _openBox(_boxNameProductOrderLocalStorageBox);
    final listMap = productOrders.map<Map<String, dynamic>>((e) => e.toJson())
        .toList();

    await box.put(
      boxKeyProductOrders,
      jsonEncode(listMap),
    );
  }


  Future<List<ProductOrder>> readProductOrders() async {
    final box = await _openBox(_boxNameProductOrderLocalStorageBox);

    final String jsonString = box.get(boxKeyProductOrders);
    final List<ProductOrder> po = (jsonDecode(jsonString) as List<dynamic>)
        .map((e) => ProductOrder.fromJson(e as Map<String, dynamic>)).toList();
    return po;
  }

  // Future<Stream<BoxEvent>> exposeProductOrders() async {
  //   return (await _openBox(_boxNameProductOrderLocalStorageBox)).watch(key: boxKeyProductOrders);
  // }

  Future<void> updateProductOrders(List<ProductOrder> productOrders) async {
    await deleteAll(_boxNameProductOrderLocalStorageBox);
    await saveProductOrders(productOrders);
  }

  void read() {}

  void delete() {}

  Future<void> deleteAll(String boxName) async {
    final box = await _openBox(_boxNameProductOrderLocalStorageBox);
    await box.clear();
  }
}
