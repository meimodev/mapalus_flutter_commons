import 'dart:developer' show log;
import 'package:mapalus_flutter_commons/models/models.dart';

class NotificationService {

  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;
  NotificationService._();



  Future<void> postNotification(PostNotificationRequest req) async {
    log("[NOTIFICATION SERVICE] postNotification $req");
  }
}
