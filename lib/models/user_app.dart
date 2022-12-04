class UserApp {
  String phone;
  String name;
  String deviceInfo;
  List<String> orders;

  UserApp({
    required this.phone,
    required this.name,
    this.deviceInfo = "",
    this.orders = const [],
  });

  factory UserApp.fromMap(Map<String, dynamic> data) => UserApp(
        phone: data["phone"],
        name: data["name"],
        deviceInfo: data["device_info"] ?? "",
        orders: data["orders"] != null
            ? List<String>.from(data["orders"])
            : [],
      );

  @override
  String toString() {
    return 'User{phone: $phone, name: $name, device_info: $deviceInfo orders: $orders}';
  }

  Map<String, dynamic> toMap({minify = false}) {
    if (minify) {
      return {
        'name': name,
        'phone': phone,
      };
    }
    return {
      'name': name,
      'phone': phone,
      'device_info': deviceInfo,
      'orders': orders,
    };
  }
}
