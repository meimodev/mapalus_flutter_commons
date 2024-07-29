import '../mapalus_flutter_commons.dart';

class ProductRepo  {
  FirestoreService firestore = FirestoreService();

  Future<Product> searchProduct() {
    // TODO: implement searchProduct
    throw UnimplementedError();
  }

  Future<List<Product>> readProducts() async {
    final res = await firestore.readProducts();
    final data = res.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
    return data;
  }

  Future<Product> updateProduct(Product product) async {
    final res = await firestore.updateProduct(product.id, product.toJson());
    final data = Product.fromJson(res as Map<String, dynamic>);
    return data;
  }

  Future<Product> createProduct(Product product) async {
    final res = await firestore.createProduct(product.toJson());
    final data = Product.fromJson(res as Map<String, dynamic>);
    return data;
  }

  Future<void> deleteProduct(String productId) async {
    await firestore.deleteProduct(productId);
  }
}