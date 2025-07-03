import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_keys.freezed.dart';
part 'app_keys.g.dart';

@freezed
abstract class AppKeys with _$AppKeys {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppKeys({
    required String fcmProjectId,
    required String fcmServerKey,
    required String serverKey,
  }) = _AppKeys;

  factory AppKeys.fromJson(Map<String, Object?> json) =>
      _$AppKeysFromJson(json);
}
