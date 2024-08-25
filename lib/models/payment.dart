import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/shared/enums.dart';

import 'converter/converter.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Payment({
   required String id,
    required String orderId,
    required PaymentMethod method,
    required PaymentStatus status,
    @TimestampToDateTimeConverter() required DateTime lastUpdate,
    required double amount,
    required DateTime createdAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);
}
