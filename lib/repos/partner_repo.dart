import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';

class PartnerRepo {
  FirestoreService firestore = FirestoreService();

  Future<Partner> readPartner(String partnerId) async {
    final res = await firestore.readPartner(partnerId);
    final data = res as Map<String, dynamic>;
    return Partner.fromJson(data);
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

}