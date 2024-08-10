import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'get_orders_request.freezed.dart';

@freezed
class GetOrdersRequest with _$GetOrdersRequest {
  const factory GetOrdersRequest({
    @Default([]) List<String> productIds,
    UserApp? userApp,
    Partner? partner,
  }) = _GetOrdersRequest;
}
