import '../mapalus_flutter_commons.dart';
import 'dart:developer' as dev;
import 'dart:io' show Platform;

abstract class UserRepoContract {
  Future<UserApp?> readSignedInUser();

  Future<bool> checkIfRegistered(String phone);

  Future<UserApp> registerUser(String phone, String name);

  void requestOTP(String phone, Function(Result) onResult);

  Future<bool> deleteUser(String phone);
}

class UserRepo extends UserRepoContract {
  UserApp? signedUser;
  int? resendToken;
  String? verificationId;
  FirestoreService fireStore = FirestoreService();
  FirebaseAuth auth = FirebaseAuth.instance;

  Function(UserApp userApp)? onSuccessSigning;
  Function(UserApp userApp)? onSignedUser;
  Function(String phone)? onUnregisteredUser;
  void Function()? onSigningOut;

  bool shouldCallIdChange = false;

  // bool authStatusCalled = false;
  User? user;

  UserRepo() {
    // auth.authStateChanges().listen((User? user) async {
    //   this.user = user;
    //   if (user != null) {
    //     dev.log('AuthStateChanges(), Phone number confirmed');
    //
    //     // authStatusCalled = true;
    //     final result = await fireStore.getUser(user.phoneNumber!);
    //     UserApp? userApp = result == null
    //         ? null
    //         : UserApp.fromJson(result as Map<String, dynamic>);
    //
    //     if (userApp != null) {
    //       dev.log('AuthStateChanges() signed success $signedUser');
    //       signing(userApp);
    //     } else {
    //       // user is not registered
    //       if (onUnregisteredUser != null) {
    //         onUnregisteredUser!(user.phoneNumber!);
    //       }
    //       signedUser = null;
    //       shouldCallIdChange = true;
    //       dev.log(
    //           'AuthStateChanges() Phone is not registered ${user.phoneNumber!}');
    //     }
    //   } else {
    //     dev.log('AuthStateChanges() user = null');
    //
    //     signedUser = null;
    //   }
    // });
    // auth.idTokenChanges().listen((user) async {
    //   //just called this listener when the auth status is never called
    //   if (!shouldCallIdChange) {
    //     return;
    //   }
    //   if (user != null) {
    //     dev.log('idTokenChanges(), Phone number confirmed');
    //     if (signedUser != null) {
    //       dev.log('idTokenChanges(), user already signed');
    //       return;
    //     }
    //     final result = await fireStore.getUser(user.phoneNumber!);
    //     UserApp? userApp = result == null
    //         ? null
    //         : UserApp.fromJson(result as Map<String, dynamic>);
    //
    //     if (userApp != null) {
    //       dev.log('idTokenChanges() signed success $signedUser');
    //       signing(userApp);
    //     } else {
    //       // user is not registered
    //       if (onUnregisteredUser != null) {
    //         onUnregisteredUser!(user.phoneNumber!);
    //       }
    //       signedUser = null;
    //       dev.log(
    //           'idTokenChanges() Phone is not registered ${user.phoneNumber!}');
    //     }
    //     return;
    //   }
    //   dev.log("idTokenChanges() Phone not confirmed");
    // });
  }

  Future<void> checkPreviousSigning() async {
    var box = await Hive.openBox('user_signing');
    String? name = box.get('name');
    String? phone = box.get('phone');
    if (name != null && phone != null) {
      signedUser = UserApp(uid:"",id:"",phone: phone, name: name, lastActiveTimeStamp: DateTime.now());
    }
  }

  Future<void> signing(UserApp user) async {
    signedUser = user;
    if (onSuccessSigning != null) {
      onSuccessSigning!(user);
      onSuccessSigning = null;
    }
    if (onSignedUser != null) {
      onSignedUser!(user);
    }
    // FirebaseCrashlytics.instance
    //     .setUserIdentifier("${user.phone} - ${user.name}");
    // var box = Hive.box('user_signing');
    // box.put('name', user.name);
    // box.put('phone', user.phone);

    await updateUserDeviceInfo();
    await updateFcmToken(user.phone);
    await updateLastActiveTimeStamp(user.phone);
  }

  Future<void> updateUserDeviceInfo() async {
    if (signedUser == null) {
      return;
    }
    // DeviceInfoPlugin dInfo = DeviceInfoPlugin();
    // String deviceInfoString = "";
    //
    // if (Platform.isAndroid) {
    //   AndroidDeviceInfo androidInfo = await dInfo.androidInfo;
    //   deviceInfoString = '${androidInfo.manufacturer} '
    //       '${androidInfo.model} '
    //       'SDK:${androidInfo.version.sdkInt} '
    //       '${androidInfo.version.codename} '
    //       '${androidInfo.version.release}';
    // }
    // if (Platform.isIOS) {
    //   IosDeviceInfo iosInfo = await dInfo.iosInfo;
    //   deviceInfoString =
    //       '${iosInfo.utsname.machine} ${iosInfo.model} ${iosInfo.name} ${iosInfo.utsname.version}';
    // }
    //
    // await fireStore.updateUserDeviceInfo(signedUser!.id, deviceInfoString);
  }

  Future<void> updateFcmToken(String phone) async {
    // final fcmToken = await FirebaseMessaging.instance.getToken();
    // await fireStore.updateFcmToken(phone, fcmToken);
    // if (signedUser != null) {
    //   signedUser =  signedUser!.copyWith(fcmToken: fcmToken!);
    // }
  }

  Future<void> updateLastActiveTimeStamp(String phone) async {
    // await fireStore.updateLastActiveTimeStamp(phone);
  }

  @override
  Future<UserApp?> readSignedInUser() {
    return Future.value(signedUser);
  }

  @override
  Future<bool> checkIfRegistered(String phone) async {
    return Future.value(await fireStore.checkPhoneRegistration(phone));
  }

  @override
  Future<UserApp> registerUser(String phone, String name) async {
    UserApp user = UserApp(phone: phone, name: name.capitalizeByWord, uid: '', id: '', lastActiveTimeStamp: DateTime.now());
    await fireStore.createUser(phone, user.toJson());
    signing(user);
    return Future.value(user);
  }

  @override
  void requestOTP(String phone, Function(Result) onResult) async {
    phone = phone.replaceFirst("0", "+62");
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          dev.log("[VERIFICATION COMPLETED] CODE AUTOMATICALLY RETRIEVED");
          onResult(Result(message: "PROCEED"));
        },
        verificationFailed: (FirebaseAuthException e) async {
          dev.log('[VERIFICATION_FAILED] ${e.code}');
          await FirebaseCrashlytics.instance.recordError(e, e.stackTrace,
              reason: 'FirebaseAuthException verificationFailed');

          FirebaseCrashlytics.instance
              .log("AUTH EXCEPTION Verification ${e.code}");

          onResult(Result(message: "VERIFICATION_FAILED"));
        },
        codeSent: (String id, int? token) {
          verificationId = id;
          resendToken = token;

          dev.log('[CODE SENT]');
          onResult(Result(message: "SENT"));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
        forceResendingToken: resendToken,
      );
    } catch (e) {
      dev.log("SOME ERROR OCCURED ${e.toString()}");
    }
  }

  void checkOTPCode(String smsCode, Function(Result) onResult) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId!,
      smsCode: smsCode,
    );

    try {
      await auth.signInWithCredential(credential);
      onResult(Result(message: 'OK'));
    } on FirebaseAuthException catch (e) {
      await FirebaseCrashlytics.instance
          .recordError(e, e.stackTrace, reason: 'FirebaseAuthException');

      FirebaseCrashlytics.instance.log("AUTH EXCEPTION ${e.code}");

      dev.log('AUTH EXCEPTION ${e.code}');

      if (e.code == "invalid-verification-code") {
        dev.log('INVALID CODE');
        onResult(Result(message: "INVALID_CODE"));
        return;
      } else if (e.code == "invalid-verification-id") {
        dev.log('INVALID VERIFICATION ID');
        onResult(Result(message: "INVALID_ID"));
        return;
      } else if (e.code == 'session-expired') {
        dev.log('SESSION EXPIRED');
        onResult(Result(message: "EXPIRED"));
        return;
      } else {
        dev.log('Unidentified error occurred in signInWithCredential');
        dev.log(e.toString());
        return;
      }
    }
  }

  Future<void> signOut() async {
    if (signedUser != null) {
      await FirebaseAuth.instance.signOut();
      signedUser = null;
    }
    FirebaseCrashlytics.instance.setUserIdentifier("");

    if (onSigningOut != null) {
      onSigningOut!();
    }
  }

  @override
  Future<bool> deleteUser(String phone) async {
    if (user != null) {
      try {
        await user!.delete();
      } catch (e) {
        throw Exception('sign to confirm');
      }
    }
    return await fireStore.deleteUser(phone);
  }
}
