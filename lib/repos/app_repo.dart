import 'dart:developer' as dev;
import 'dart:io';

import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';

abstract class AppRepoContract {}

class AppRepo /*extends AppRepoContract*/ {
  final FirestoreService firestoreService;
  final NotificationService notificationService;

  AppRepo({
    required this.firestoreService,
    required this.notificationService,
  });

  Future<List<DeliveryTime>> getDeliveryTimes() async {
    final res = await firestoreService.getDeliveryTimes();
    final data = res as Map<String, dynamic>;
    final list = List<Map<String, dynamic>>.from(data['deliveries']);
    return list.map((e) => DeliveryTime.fromJson(e)).toList();
  }

  Future<bool> checkIfLatestVersion(bool isMapalus) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String version = packageInfo.version;
    Version localVersion = Version.fromList(version.split('.'));

    var data = await firestoreService.getAppVersion(isMapalus: isMapalus);
    Version remoteVersion = Version.fromMap(data as Map<String, dynamic>);

    dev.log('[APP VERSION] local $localVersion remote $remoteVersion');

    if (remoteVersion > localVersion) {
      return false;
    }
    return true;
  }

  Future<String> getCurrentVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return 'v${packageInfo.version}';
  }

  Future<DeliveryModifiers> getDeliveryModifiers() async {
    final data = await firestoreService.getDeliveryModifiers();
    return DeliveryModifiers.fromJson(data as Map<String, dynamic>);
  }

  Future<Announcement?> getAppAnnouncement() async {
    final data = await firestoreService.getAppAnnouncement();

    return data != null
        ? Announcement.fromMap(data as Map<String, dynamic>)
        : null;
  }

  Future<String> getUserDeviceInfo() async {
    // DeviceInfoPlugin dInfo = DeviceInfoPlugin();
    String deviceInfoString = "";

    if (Platform.isAndroid) {
      // AndroidDeviceInfo androidInfo = await dInfo.androidInfo;
      // deviceInfoString = '${androidInfo.manufacturer} '
      //     '${androidInfo.model} '
      //     'SDK:${androidInfo.version.sdkInt} '
      //     '${androidInfo.version.codename} '
      //     '${androidInfo.version.release}';
      deviceInfoString = "Android";
    }
    if (Platform.isIOS) {
      // IosDeviceInfo iosInfo = await dInfo.iosInfo;
      // deviceInfoString =
      //     '${iosInfo.utsname.machine} ${iosInfo.model} ${iosInfo.name} ${iosInfo.utsname.version}';
      deviceInfoString = "iOS";
    }

    return deviceInfoString;
  }

  Future<String> getPushNotificationToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    return fcmToken ?? "";
  }

  Future<String?> sendNotification(PostNotificationRequest req) async {
    return await notificationService.postNotification(req);
  }
}
