class Partner {
  String id;
  List<String> fcmToken;
  String name;
  List<String> orders;

  Partner.fromMap(Map<String, dynamic> data)
      : id = data['id'],
        fcmToken = List<String>.from(data['fcm_token']),
        name = data['name'],
        orders = List<String>.from(data['orders']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fcm_token': fcmToken,
      'name': name,
      'orders': orders,
    };
  }

  void addNewToken(String token) {
    if (fcmToken.length < 3) {
      fcmToken.add(token);
      return;
    }
    fcmToken.insert(0, token);
  }
}