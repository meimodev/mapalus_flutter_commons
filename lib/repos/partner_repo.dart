import 'dart:developer' show log;
import 'dart:io';

import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';

class PartnerRepo {
  FirestoreService firestore = FirestoreService();
  OnlineStorageService storage = OnlineStorageService();

  Partner? _partner;

  Future<Partner?> getCurrentPartner() async {
    if (_partner == null) {
      log("[PARTNER REPO] Partner not logged in, call setCurrentPartnerFirst()");
    }
    return _partner!;
  }

  Future<void> setCurrentPartner(String partnerId) async {
    final partner = await getPartners(
      GetPartnerRequest(
        partnerId: partnerId,
      ),
    );
    _partner = partner;
  }

  Future<Partner?> getPartners(GetPartnerRequest req) async {
    final res = await firestore.getPartners(req);
    if (res.isEmpty) {
      return null;
    }
    return Partner.fromJson(res.first as Map<String, dynamic>);
  }

  Future<Partner> updatePartner(UpdatePartnerRequest req) async {
    final res = await firestore.updatePartner(req);
    final data = res as Map<String, dynamic>;
    return Partner.fromJson(data);
  }

  Future<String?> uploadImage(File image, String partnerId) async {
    return await storage.uploadImage(image, "partners", partnerId);
  }

  Future<DeliveryModifiers> getDeliveryModifiers() async {
    final result = await firestore.readDeliveryModifiers();
    final res = result as Map<String, dynamic>;
    return DeliveryModifiers.fromJson(res);
  }

  Future<void> setDeliveryModifiers(DeliveryModifiers data) async {
    await firestore.createDeliveryModifiers(data.toJson());
  }

  Future<UsersInfo> getUsersInfo() async {
    final result = await firestore.getUsersInfo();
    final res = result as Map<String, dynamic>;
    return UsersInfo.fromMap(res);
  }

  Future<UsersInfo> queryUsersInfo(String dateTimeString) async {
    final result = await firestore.queryUsersInfo(dateTimeString);
    final res = result as Map<String, dynamic>;
    return UsersInfo.fromMap(res);
  }

  Future<List<Partner>> readPartnersForHome() async {
    final result = await firestore.getPartners(const GetPartnerRequest());
    return result
        .map((e) => Partner.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
