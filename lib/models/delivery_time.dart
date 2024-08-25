import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/converter/converter.dart';

part 'delivery_time.freezed.dart';

part 'delivery_time.g.dart';

@freezed
class DeliveryTime with _$DeliveryTime {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DeliveryTime({
    required String id,
    required bool available,
    required double discount,
    @StringHourToDateTimeConverter() required DateTime start,
    @StringHourToDateTimeConverter() required DateTime end,
  }) = _DeliveryTime;

  factory DeliveryTime.fromJson(Map<String, Object?> json) =>
      _$DeliveryTimeFromJson(json);
}
