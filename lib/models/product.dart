import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

//
// @freezed
// class Product {
//
//   String id;
//   String name;
//   String description;
//   String imageUrl;
//   int price;
//   String unit;
//   String _status;
//   String _weight;
//   bool isCustomPrice;
//   String category;
//   int minimumPrice;
//
//   // Product.fromMap(Map<String, dynamic> data)
//   //     : id = data["id"],
//   //       name = data["name"],
//   //       description = data["description"],
//   //       imageUrl = data["image"],
//   //       price = data["price"],
//   //       unit = data["unit"],
//   //       _status = data["status"],
//   //       _weight = data["weight"],
//   //       isCustomPrice = data["custom_price"],
//   //       category = data["category"],
//   //       minimumPrice = data['minimum_price'] ?? 0;
//
//   // Product.empty()
//   //     : id = "",
//   //       name = "",
//   //       description = "",
//   //       imageUrl = "",
//   //       price = 0,
//   //       unit = "",
//   //       _status = ProductStatus.unavailable.name,
//   //       _weight = "0",
//   //       isCustomPrice = false,
//   //       category = "",
//   //       minimumPrice = 0;
//
//   // ProductStatus get status => _status == ProductStatus.available.name
//   //     ? ProductStatus.available
//   //     : ProductStatus.unavailable;
//   //
//   // bool get isAvailable => status == ProductStatus.available;
//   //
//   // set isAvailable(bool isAvailable) => _status = isAvailable
//   //     ? ProductStatus.available.name
//   //     : ProductStatus.unavailable.name;
//   //
//   // String get priceF => price.formatNumberToCurrency();
//   //
//   // double get weight => double.parse(_weight);
//   //
//   // String get weightF =>
//   //     '${weight.formatNumberThousandSeparator()} gram';
//
//   // bool get isQuantityNotEditable =>
//   //     name.contains("l )") || name.contains("g )");
//
//   // set weight(double weight) => _weight = weight.toString();
//   //
//   // String get minimumPriceF => minimumPrice.formatNumberToCurrency();
//
//   // @override
//   // bool operator ==(Object other) =>
//   //     identical(this, other) ||
//   //     other is Product && runtimeType == other.runtimeType && id == other.id;
//   //
//   // @override
//   // int get hashCode => id.hashCode;
//   //
//   // @override
//   // String toString() {
//   //   return 'Product{id: $id, name: $name, '
//   //       'description: $description, imageUrl: $imageUrl, '
//   //       'price: $price, unit: $unit, '
//   //       'status: $status, isCustomPrice: $isCustomPrice, '
//   //       'category:$category minimumPrice $minimumPrice}';
//   // }
//
//   // Map<String, dynamic> toMap() {
//   //   return {
//   //     'id': id,
//   //     'name': name,
//   //     'description': description,
//   //     'image': imageUrl,
//   //     'price': price,
//   //     'unit': unit,
//   //     'status': _status,
//   //     'weight': _weight,
//   //     'custom_price': isCustomPrice,
//   //     'category': category,
//   //     'minimum_price': minimumPrice,
//   //   };
//   // }
// }

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Product({
    @Default("") String category,
    @Default(false) bool customPrice,
    @Default("") String description,
    @Default("") String id,
    @Default("") String image,
    @Default(0) double minimumPrice,
    @Default("") String name,
    @Default("") String partnerId,
    @Default(0) double price,
    ProductStatus? status,
    ProductType? type,
    ProductUnit? unit,
    @Default(0) double weight,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
