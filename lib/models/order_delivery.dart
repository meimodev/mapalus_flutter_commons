import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';
import 'package:mapalus_flutter_commons/shared/enums.dart';

part 'order_delivery.freezed.dart';
part 'order_delivery.g.dart';

@freezed
class OrderDelivery with _$OrderDelivery {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderDelivery({
    required String id,
    required String orderId,
    required double weight,
    required double price,
    required double distance,
    required DeliveryStatus status,
    required DeliveryTime selectedTime,
    @TimestampToDateTimeConverter() required DateTime selectedDate,
    @TimestampToDateTimeConverter() required DateTime lastUpdate,
    required Location destination,
    UserApp? deliverBy,
  }) = _OrderDelivery;

  factory OrderDelivery.fromJson(Map<String, Object?> json) =>
      _$OrderDeliveryFromJson(json);
}
