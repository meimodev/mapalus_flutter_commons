import '../mapalus_flutter_commons.dart';
import 'dart:developer' as dev;

class AppRepoContract {}

class AppRepo extends AppRepoContract {
  FirestoreService firestoreService = FirestoreService();

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
    return DeliveryModifiers.fromJson( data as Map<String, dynamic>);
  }

  Future<Announcement?> getAppAnnouncement() async {
    final data = await firestoreService.getAppAnnouncement();

    return data != null
        ? Announcement.fromMap(data as Map<String, dynamic>)
        : null;
  }
}
