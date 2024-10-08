import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus {
  @JsonValue("PLACED")
  placed,
  @JsonValue("ACCEPTED")
  accepted,
  @JsonValue("REJECTED")
  rejected,
  @JsonValue("DELIVERED")
  delivered,
  @JsonValue("FINISHED")
  finished,
  @JsonValue("CANCELED")
  canceled
}

enum ProductStatus {
  @JsonValue("AVAILABLE")
  available,
  @JsonValue("UNAVAILABLE")
  unavailable
}

extension XProductStatus on ProductStatus {
  bool get available => this == ProductStatus.available;
}

enum ProductType {
  @JsonValue("FOOD")
  food,
  @JsonValue("GROCERY")
  grocery,
  @JsonValue("LAUNDRY")
  laundry
}

enum ProductUnit {
  @JsonValue("SERVE")
  serve,
  @JsonValue("KILOGRAM")
  kilogram,

}

enum PaymentMethod {
  @JsonValue("CASH")
  cash,
  @JsonValue("TRANSFER")
  transfer,
}

enum CardSigningState { oneTimePassword, confirmCode, notRegistered }

enum DeliveryStatus {
  @JsonValue("PLACED")
  placed,
  @JsonValue("PICKED")
  picked,
  @JsonValue("DELIVERED")
  delivered,
  @JsonValue("CANCELED")
  canceled,
}
enum PaymentStatus {
  @JsonValue("PLACED")
  placed,
  @JsonValue("PAID")
  delivered,
  @JsonValue("EXPIRED")
  expired,
  @JsonValue("CANCELED")
  canceled,
}