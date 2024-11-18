import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner with _$Partner {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Partner({
    required String id,
    required String name,
    @Default("") String image,
    @Default("") String fcmToken,
    @TimestampToDateTimeConverter() required DateTime lastActiveTimeStamp,
    Location? location,
  }) = _Partner;

  factory Partner.fromJson(Map<String, Object?> json) =>
      _$PartnerFromJson(json);
}
