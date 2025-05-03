import 'dart:io';

import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';
import 'package:uuid/uuid.dart';

class ProductRepo {
  FirestoreService firestore = FirestoreService();
  OnlineStorageService onlineStorage = OnlineStorageService.instance;

  /// currently using on device search, change later to backend search
  Future<List<Product>> searchProduct(List<Product> allProducts,
      String searchText) {
    return Future.value(
      allProducts
          .where(
            (element) =>
        searchText.isEmpty
            ? true
            : element.name.toLowerCase().contains(
          searchText.toLowerCase(),
        ),
      )
          .toList(),
    );
  }

  Future<Product?> readProduct(String productId) async {
    final result = await firestore.getProducts(
      GetProductRequest(productId: productId),
    );
    if (result.isEmpty) return null;

    return Product.fromJson(result.first as Map<String, dynamic>);
  }

  Future<List<Product>> readProducts(GetProductRequest req) async {
    final result = await firestore.getProducts(req);
    return result
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Stream<List<Product>> readProductsStream(GetProductRequest req) {
    final products = firestore.exposeProducts(req);
    return products.map(
          (event) => event.map(Product.fromJson).toList(),
    );
  }

  Future<Product> updateProduct(Product product) async {
    final res =
    await firestore.createOrUpdateProduct(product.toJson(), product.id);
    final data = Product.fromJson(res as Map<String, dynamic>);
    return data;
  }

  Future<Product> createProduct(Product product, String partnerId) async {
    final alteredProduct =
    product.copyWith(id: Uuid().v4(), partnerId: partnerId);
    final res = await firestore.createOrUpdateProduct(
        alteredProduct.toJson(), alteredProduct.id);
    final data = Product.fromJson(res as Map<String, dynamic>);
    return data;
  }

  Future<void> deleteProduct(String productId) async {
    await firestore.deleteProduct(productId);
  }

  Future<List<String>> getCategories() async {
    final result = await firestore.getProductCategories();
    return result;
  }

  Future<String?> uploadProductImage(File image, String productId) async {
    return await onlineStorage.uploadImage(image, "products", productId);
  }

  Future<bool> deleteProductImage(String productId) async {
    return await onlineStorage.deleteImage( "products", productId);
  }
}
