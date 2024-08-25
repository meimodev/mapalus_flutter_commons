import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_modifiers.freezed.dart';

part 'delivery_modifiers.g.dart';

@freezed
class DeliveryModifiers with _$DeliveryModifiers {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeliveryModifiers({
    @Default(0) double distancePrice,
    @Default(0) double distanceUnit,
    @Default(0) double weightPrice,
    @Default(0) double weightUnit,
  }) = _DeliveryModifiers;

  factory DeliveryModifiers.fromJson(Map<String, Object?> json) =>
      _$DeliveryModifiersFromJson(json);
}
