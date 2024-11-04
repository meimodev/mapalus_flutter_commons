import 'dart:async';
import 'dart:developer' show log;

import 'package:mapalus_flutter_commons/mapalus_flutter_commons.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/services/services.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';
import 'package:uuid/uuid.dart';

import 'app_repo.dart';

abstract class UserRepoContract {}

class UserRepo extends UserRepoContract {
  final _fireStore = FirestoreService();
  final _auth = FirebaseAuth.instance;

  final AppRepo _appRepo;
  final LocalStorageService _localStorageService;

  UserApp? _signedUser;
  int? _resendToken;
  String? _verificationId;
  User? _firebaseUser;

  void Function(UserApp value)? onSuccessSigning;
  void Function(String value)? onUnregisteredUser;
  void Function()? onSigningOut;

  final _debounce = Debounce(Duration(milliseconds: 500));

  final _userAppStream = StreamController<UserApp?>.broadcast();

  UserRepo({
    required AppRepo appRepo,
    required LocalStorageService localStorageService,
  })  : _localStorageService = localStorageService,
        _appRepo = appRepo {
    _auth.authStateChanges().listen((user) async {
      _onAuthStateChanges(user, "authStateChanges()");
    });
    _auth.idTokenChanges().listen((user) async {
      _onAuthStateChanges(user, "idTokenChanges()");
    });
  }

  void _onAuthStateChanges(User? user, String source) async {
    _debounce.call(() async {
      if (user == null) {
        log('[USER REPO] $source user = null');
        _signedUser = null;
        return;
      }

      _firebaseUser = user;

      log('[USER REPO] $source, Phone number confirmed ${user.phoneNumber}');

      UserApp? resultUser = await getUser(
        GetUserRequest(
          phone: user.phoneNumber!,
        ),
      );

      if (resultUser != null) {
        log('[USER REPO] $source signed success $resultUser');
        await _signing(resultUser);
        return;
      }
      // user is not registered

      if (onUnregisteredUser != null) {
        _debounce.call(() {
          onUnregisteredUser!(user.phoneNumber!);
        });
      }
      _signedUser = null;
      // _shouldCallIdChange = true;
      log('[USER REPO] $source Phone is not registered ${user.phoneNumber!}');
    });
  }

  Future<void> _signing(UserApp user) async {
    // final updatedUser = await updateUserMetaData(user);
    _localStorageService.saveUser(user);
    _signedUser = user;

    _debounce.call(() {
      _userAppStream.add(user);
    });

    if (onSuccessSigning != null) {
      _debounce.call(() {
        onSuccessSigning!(user);
        onSuccessSigning = null;
      });
    }
  }

  Future<UserApp> updateUserMetaData(UserApp user) async {
    final String updatedUserDeviceInfo = await _appRepo.getUserDeviceInfo();
    final String updatedFcmToken = await _appRepo.getPushNotificationToken();

    return await updateUser(
      PostUserRequest(
        user: user.copyWith(
          lastActiveTimeStamp: DateTime.now(),
          deviceInfo: updatedUserDeviceInfo,
          fcmToken: updatedFcmToken,
        ),
      ),
    );
  }

  Future<UserApp> updateUser(PostUserRequest req) async {
    final res = await _fireStore.createOrUpdateUser(req);
    final data = res as Map<String, dynamic>;
    return UserApp.fromJson(data);
  }

  /// Get the current signed in User
  Future<UserApp?> getSignedUser() async {
    if (_signedUser != null) return _signedUser;

    final localUser = _localStorageService.readUser();
    if (localUser != null) {
      log("[USER REPO] getCurrentUser() retrieved from localStorage");
      return localUser;
    }

    if (_firebaseUser != null) {
      final result = await getUser(
        GetUserRequest(
          phone: _firebaseUser!.phoneNumber!,
        ),
      );
      if (result != null) {
        log("[USER REPO] getCurrentUser() retrieved from remote database");
        return result;
      }
    }
    log("[USER REPO] getCurrentUser() no user signed in");
    return null;
  }

  Future<UserApp> registerUser({required String name}) async {
    if (_firebaseUser == null) {
      throw Exception('verify phone first to continue registering');
    }
    final userApp = UserApp(
      name: name,
      phone: _firebaseUser!.phoneNumber!,
      uid: _firebaseUser!.uid,
      deviceInfo: await _appRepo.getUserDeviceInfo(),
      fcmToken: await _appRepo.getPushNotificationToken(),
      documentId: Uuid().v4(),
      lastActiveTimeStamp: DateTime.now(),
    );
    await _signing(userApp);
    final res = await _fireStore.createOrUpdateUser(
      PostUserRequest(user: userApp),
    );
    final data = res as Map<String, dynamic>;
    return UserApp.fromJson(data);
  }

  Future<void> requestOTP(
      String phone, Function(Result result) onResult) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phone.phoneCleanUseCountryCode,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          log('[USER REPO] requestOtp VERIFICATION AUTOMATICALLY RETRIEVED');
          onResult(Result(message: "PROCEED", error: false));
        },
        verificationFailed: (FirebaseAuthException e) async {
          log('[USER REPO] requestOtp VERIFICATION FAILED - AUTH EXCEPTION $e');
          onResult(Result(
              message: "Verifikasi gagal, silahkan coba sesaat lagi",
              error: true));
        },
        codeSent: (String id, int? token) {
          _verificationId = id;
          _resendToken = token;

          log('[USER REPO] requestOtp CODE SENT');
          onResult(Result(message: "SENT", error: false));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          log('[USER REPO] requestOtp AUTO RETRIEVAL FAILED, VERIFY MANUALLY');
          onResult(Result(message: "MANUAL_VERIFICATION", error: false));
        },
        forceResendingToken: _resendToken,
      );
    } catch (e) {
      log("[USER REPO] requestOtp UNKNOWN ERROR OCCURRED $e");
      onResult(Result(message: "UNKNOWN_ERROR", error: true));
    }
  }

  Future<void> verifyOTP(
      String smsCode, void Function(Result result) onResult) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId!,
      smsCode: smsCode,
    );

    try {
      await _auth.signInWithCredential(credential);
      log('[USER REPO] verifyOTP MANUAL SIGNING SUCCESSFUL');
      onResult(Result(message: "PROCEED", error: false));
    } on FirebaseAuthException catch (e) {
      log('[USER REPO] verifyOTP AuthException $e');

      if (e.code == "invalid-verification-code") {
        log('[USER REPO] verifyOTP INVALID CODE');

        onResult(Result(
          message: "Kode OTP salah, silahkan periksa & coba masukkan kembali",
          error: true,
        ));
      } else if (e.code == "invalid-verification-id") {
        log('[USER REPO] verifyOTP INVALID VERIFICATION ID');

        onResult(Result(
          message: "Terjadi Kesalahan Silahkan Coba Kembali",
          error: true,
        ));
      } else if (e.code == 'session-expired') {
        log('[USER REPO] verifyOTP SESSION EXPIRED');

        onResult(Result(
          message: "Kode kadaluarsa, Silahkan kembali dan nomor HP kembali",
          error: true,
        ));
      } else {
        log('[USER REPO] verifyOTP UNKNOWN ERROR OCCURRED $e');

        onResult(Result(
          message:
              "Koneksi kami dengan anda sedang bermasalah, silahkan coba sesaat lagi",
          error: true,
        ));
      }
    }
  }

  Future<void> signOut() async {
    log('[USER REPO] signing out ...');

    await FirebaseAuth.instance.signOut();
    _signedUser = null;
    await _localStorageService.deleteUser();
    _firebaseUser = null;
    _debounce.call(() {
      _userAppStream.add(null);
    });

    if (onSigningOut != null) {
      _debounce.call(() {
        onSigningOut!();
      });
    }
  }

  Future<bool> deleteUser(String phone) async {
    if (_firebaseUser != null) {
      try {
        await _firebaseUser!.delete();
      } catch (e) {
        throw Exception('sign to confirm');
      }
    }
    return await _fireStore.deleteUser(phone);
  }

  /// Get user from database
  Future<UserApp?> getUser(GetUserRequest req) async {
    final res = await _fireStore.getUsers(req);
    if (res.isEmpty) return null;

    return UserApp.fromJson(res.first as Map<String, dynamic>);
  }

  Stream<UserApp?> get userAppStream => _userAppStream.stream;

  void testOnSuccess(String phone) async {
    final user = await getUser(GetUserRequest(phone: phone));
    await _signing(user!);
    onSuccessSigning?.call(user);
    _userAppStream.add(user);
  }
}
