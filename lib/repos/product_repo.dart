import '../mapalus_flutter_commons.dart';

class ProductRepo {
  FirestoreService firestore = FirestoreService();

  /// currently using on device search, change later to backend search
  Future<List<Product>> searchProduct(
      List<Product> allProducts, String searchText) {
    return Future.value(
      allProducts
          .where(
            (element) => searchText.isEmpty
                ? true
                : element.name.toLowerCase().contains(
                      searchText.toLowerCase(),
                    ),
          )
          .toList(),
    );
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

  Stream<List<Product>> readProductsStream(GetProductRequest req) {
    final products = firestore.exposeProducts(req);
    return products.map(
      (event) => event.map(Product.fromJson).toList(),
    );
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

  Future<List<String>> getCategories() async {
    final result = await firestore.getProductCategories();
    return result;
  }
}
