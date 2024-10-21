import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/converter/converter.dart';

part 'user_app.freezed.dart';
part 'user_app.g.dart';

@freezed
class UserApp with _$UserApp {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserApp({
    String? deviceInfo,
    String? fcmToken,
    required String documentId,
    @TimestampToDateTimeConverter() DateTime? lastActiveTimeStamp,
    required String name,
    String? partnerId,
    required String phone,
    required String uid,
  }) = _UserApp;

  factory UserApp.fromJson(Map<String, Object?> json) =>
      _$UserAppFromJson(json);
}
