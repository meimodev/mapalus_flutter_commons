import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';

part 'voucher.g.dart';

@freezed
abstract class Voucher with _$Voucher {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Voucher({
    required String id,
    required String code,
    required double discount,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, Object?> json) =>
      _$VoucherFromJson(json);
}
