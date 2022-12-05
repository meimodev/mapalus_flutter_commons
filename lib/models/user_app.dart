import 'package:cloud_firestore/cloud_firestore.dart';

class UserApp {
  String phone;
  String name;
  String deviceInfo;
  List<String> orders;

  DateTime? lastActiveTimeStamp;
  String? fcmToken;

  UserApp({
    required this.phone,
    required this.name,
    this.deviceInfo = "",
    this.orders = const [],
    this.lastActiveTimeStamp,
    this.fcmToken,
  });

  factory UserApp.fromMap(Map<String, dynamic> data) => UserApp(
        phone: data["phone"],
        name: data["name"],
        deviceInfo: data["device_info"] ?? "",
        orders: data["orders"] != null ? List<String>.from(data["orders"]) : [],
        lastActiveTimeStamp: data['last_active_time_stamp'] != null
            ? (data['last_active_time_stamp'] as Timestamp).toDate()
            : null,
        fcmToken: data['fcm_token'],
      );

  @override
  String toString() {
    return 'UserApp{phone: $phone, name: $name, deviceInfo: $deviceInfo, '
        'orders: $orders, lastActiveTimeStamp: ${lastActiveTimeStamp?.toIso8601String()}, '
        'fcmToken: $fcmToken}';
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
      'fcm_token': fcmToken,
    };
  }
}
