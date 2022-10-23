import '../mapalus_flutter_commons.dart';

class ProductRepo  {
  FirestoreService firestore = FirestoreService();

  Future<Product> searchProduct() {
    // TODO: implement searchProduct
    throw UnimplementedError();
  }

  Future<List<Product>> readProducts() async {
    final res = await firestore.readProducts();
    final data = res.map((e) => Product.fromMap(e as Map<String, dynamic>)).toList();
    return data;
  }

  Future<Product> updateProduct(Product product) async {
    final res = await firestore.updateProduct(product.id, product.toMap());
    final data = Product.fromMap(res as Map<String, dynamic>);
    return data;
  }

  Future<Product> createProduct(Product product) async {
    final res = await firestore.createProduct(product.toMap());
    final data = Product.fromMap(res as Map<String, dynamic>);
    return data;
  }

  Future<void> deleteProduct(String productId) async {
    await firestore.deleteProduct(productId);
  }
}