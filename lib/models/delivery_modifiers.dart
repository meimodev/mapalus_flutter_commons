class DeliveryModifiers {
  final double distancePrice;
  final double distanceUnit;
  final double weightPrice;
  final double weightUnit;

  DeliveryModifiers({
    required this.distancePrice,
    required this.distanceUnit,
    required this.weightPrice,
    required this.weightUnit,
  });

  factory DeliveryModifiers.fromMap(Map<String, dynamic> data) =>
      DeliveryModifiers(
        distancePrice: double.parse(data["distance_price"].toString()),
        distanceUnit: double.parse(data["distance_unit"].toString()),
        weightPrice: double.parse(data["weight_price"].toString()),
        weightUnit: double.parse(data["weight_unit"].toString()),
      );

  Map<String, dynamic> get toMap => {
    "distance_price": distancePrice,
    "distance_unit": distanceUnit,
    "weight_price": weightPrice,
    "weight_unit": weightUnit,
  };

  @override
  String toString() {
    return 'DeliveryModifiers{distancePrice: $distancePrice, distanceUnit: $distanceUnit, '
        'weightPrice: $weightPrice, weightUnit: $weightUnit}';
  }
}
