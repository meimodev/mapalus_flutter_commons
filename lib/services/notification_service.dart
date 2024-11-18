import 'dart:convert';
import 'dart:developer' show log;

import 'package:http/http.dart' as http;
import 'package:mapalus_flutter_commons/models/models.dart';

class NotificationService {
  NotificationService();

  Future<String?> postNotification(PostNotificationRequest req) async {
    return await buildNotification(req);
  }

  Future<String?> buildNotification(PostNotificationRequest req) async {
    final url = 'https://sendpushnotification-npbv7h5k5q-uc.a.run.app';
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          // 'Accept': 'application/json',
          // 'Authorization': 'Bearer ${appKeys.fcmServerKey}',
        },
        body: jsonEncode({
          "data": {
            "destination": req.destination,
            "title": req.title,
            "body": req.body,
          }
        }),
      );

      if (response.statusCode == 200) {
        log("[NOTIFICATION SERVICE] message sent ${response.body}");
        return null;
      } else {
        log("[NOTIFICATION SERVICE] fcm response error ${response.body}");
        return 'fcm response error: ${response.statusCode}';
      }
    } catch (e) {
      log("[NOTIFICATION SERVICE] local error $e");
      return "local error $e";
    }
  }
}
