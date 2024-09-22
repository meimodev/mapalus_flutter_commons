import 'dart:developer' as dev;

import '../mapalus_flutter_commons.dart';

class NotificationService {
  static NotificationService? _instance;

  static NotificationService get instance =>
      _instance ??= NotificationService._();

  String? serverKey;
  String? partnerFCMTopic;

  NotificationService._() {
    _fetchServerKey();
    _fetchPartnerFCMTopic();
  }

  Future<void> _fetchServerKey() async {
    var fs = FirestoreService();
    var data = await fs.getAppKeys();
    var mapData = data as Map<String, dynamic>;

    serverKey = mapData['server_key'];
  }

  Future<void> _fetchPartnerFCMTopic() async {
    var fs = FirestoreService();
    var data = await fs.getPartnerKey("089525699078");
    var mapData = data as Map<String, dynamic>;

    partnerFCMTopic = '/topics/${mapData['id']}';
  }

  Future<bool> sendNotification({
    required String title,
    required String message,
    String? destination,
  }) async {
    if (serverKey == null) {
      await _fetchServerKey();
    }
    if (partnerFCMTopic == null) {
      await _fetchPartnerFCMTopic();
    }

    constructNotification(title, message, destination ?? partnerFCMTopic!);

    return true;
  }

  Future<void> constructNotification(
    String title,
    String message,
    String token,
  ) async {
    const baseUrl = "https://fcm.googleapis.com/fcm/send";
    final headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "key=$serverKey",
    };
    final body = {
      "to": token,
      "notification": {
        "title": title,
        "body": message,
      },
      "data": {
        "url": "https://www.mapalusindonesia.com",
        // "click_action": "com.sample.test.OPEN_ACTIVITY",
        "icon": "ic_launcher"
      }
    };

    try {
      // Dio dio = Dio();
      // var response = await dio.post(
      //   baseUrl,
      //   data: body,
      //   options: Options(headers: headers),
      // );
      // dev.log("[NOTIFICATION SERVICE] sent notification request $response SUCCESS");
    } catch (e) {
      dev.log("[NOTIFICATION SERVICE] sent notification request FAILED");
      dev.log(e.toString());
    }
  }
}
