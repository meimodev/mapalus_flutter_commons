import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    @Default(0) double latitude,
    @Default(0) double longitude,
    required String place,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}