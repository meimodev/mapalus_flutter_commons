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
  bool get isAvailable => this == ProductStatus.available;

  String get translate {
    switch (this) {
      case ProductStatus.available:
        return "Tersedia";
      case ProductStatus.unavailable:
        return "Tidak Tersedia";
    }
  }
}

enum ProductType {
  @JsonValue("FOOD")
  food,
  @JsonValue("GROCERY")
  grocery,
  @JsonValue("LAUNDRY")
  laundry
}

extension XProductType on ProductType {
  String get translate {
    switch (this) {
      case ProductType.food:
        return "Makanan";
      case ProductType.grocery:
        return "Bahan Makanan";
      case ProductType.laundry:
        return "Laundri";
    }
  }
}

enum ProductUnit {
  @JsonValue("SERVE")
  serve,
  @JsonValue("KILOGRAM")
  kilogram,
}

extension XProductUnit on ProductUnit {
  String get translate {
    switch (this) {
      case ProductUnit.serve:
        return "Porsi";
      case ProductUnit.kilogram:
        return "Kilogram";
    }
  }
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

enum StreamDataWrapperOperation {
  create,
  read,
  update,
  delete,
}

enum DeliveryTimeName {
  @JsonValue("NOW")
  now,
  @JsonValue("MORNING")
  morning,
  @JsonValue("NOON")
  noon,
  @JsonValue("AFTERNOON")
  afternoon,
}

extension XDeliveryTimeName on DeliveryTimeName {
  String get translate {
    switch (this) {
      case DeliveryTimeName.now:
        return "Sekarang";
      case DeliveryTimeName.morning:
        return "Pagi";
      case DeliveryTimeName.noon:
        return "Siang";
      case DeliveryTimeName.afternoon:
        return "Sore";
    }
  }
}
