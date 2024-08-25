import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_app.freezed.dart';
part 'user_app.g.dart';

@freezed
class UserApp with _$UserApp {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserApp({
    /// from firebase uid
    required String uid,
    /// generated from uuid v4
    @Default("") String partnerId,
    required String id,
    required String phone,
    required String name,
    @Default("") String deviceInfo,
    @Default("") String fcmToken,
    required DateTime lastActiveTimeStamp,
  }) = _UserApp;

  factory UserApp.fromJson(Map<String, Object?> json) =>
      _$UserAppFromJson(json);

}