import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

abstract class UserRepoPartnerContract {
  Future<bool> signIn({required String phone, required String password});

  Future<UserApp?> getSignedIn();

  Future<bool> signOut();
}

class UserRepoPartner extends UserRepoPartnerContract {
  Box<bool>? _signingBox;

  final _isSignedInKey = 'isSignedIn';
  final _boxSigningKey = 'signing';

  UserRepoPartner() {
    _init();
  }

  _init() async {
    _signingBox = await Hive.openBox(_boxSigningKey);
  }

  @override
  Future<bool> signIn({
    required String phone,
    required String password,
  }) async {
    if (phone == "089525699078" && password == "089525699078") {
      await _signingBox!.put(_isSignedInKey, true);
      return true;
    }
    return false;
  }

  @override
  Future<bool> signOut() async {
    await _signingBox!.clear();
    return true;
  }

  @override
  Future<UserApp?> getSignedIn() async {
    final isSigned = _signingBox!.get(_isSignedInKey, defaultValue: false);

    if (isSigned!) {
      return UserApp(
          phone: '089525699078',
          name: 'Pasar',
          uid: '',
          id: '',
          lastActiveTimeStamp: DateTime.now());
    }
    return null;
  }
}
