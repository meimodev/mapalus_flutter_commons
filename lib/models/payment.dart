import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/shared/enums.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
   required String id,
    required String orderId,
    required PaymentMethod method,
    required int amount,
    required DateTime createdAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);
}
