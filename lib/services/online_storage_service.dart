import 'dart:developer' show log;
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class OnlineStorageService {
  static final OnlineStorageService instance = OnlineStorageService._();

  factory OnlineStorageService() {
    return instance;
  }

  OnlineStorageService._();

  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String?> uploadImage(
    File image,
    String folderName,
    String fileName,
  ) async {
    final path = "$folderName/$fileName.jpg";
    final ref = _storage.ref().child(path);
    try {
      log("[FIREBASE STORAGE] uploading ... $image");
      await ref.putFile(image);
      final url = await ref.getDownloadURL();
      log("[FIREBASE STORAGE] upload success downloadLink=$url");
      return url;
    } catch (e) {
      log("[FIREBASE STORAGE] UPLOAD IMAGE FAILED $e");
      return null;
    }
  }
}
