import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'update_order_request.freezed.dart';

@freezed
abstract class UpdateOrderRequest with _$UpdateOrderRequest {
  const factory UpdateOrderRequest({
   required OrderApp orderApp,
  }) = _UpdateOrderRequest;

}

