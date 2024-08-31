import '../mapalus_flutter_commons.dart';

class ProductRepo {
  FirestoreService firestore = FirestoreService();

  Future<Product> searchProduct() {
    // TODO: implement searchProduct
    throw UnimplementedError();
  }

  Future<Product> readProduct(String productId) async {
    final result = await firestore.getProducts(
      GetProductRequest(productId: productId),
    );
    return Product.fromJson(result.first as Map<String, dynamic>);
  }

  Future<List<Product>> readProducts(GetProductRequest req) async {
    final result = await firestore.getProducts(req);
    return result
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
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

  Future<List<Product>> readProductsForHome() async {
    final result = await firestore.getProducts(const GetProductRequest());
    return result
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
