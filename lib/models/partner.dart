import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'partner.freezed.dart';

part 'partner.g.dart';

@freezed
class Partner with _$Partner {
  const factory Partner({
    required String id,
    required String name,
    @Default("") String image,
    DateTime? lastActiveTimeStamp,
    Location? location,
  }) = _Partner;

  factory Partner.fromJson(Map<String, Object?> json) =>
      _$PartnerFromJson(json);
}
