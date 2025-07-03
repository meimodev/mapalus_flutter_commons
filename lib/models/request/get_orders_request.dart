import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'get_orders_request.freezed.dart';

@freezed
abstract class GetOrdersRequest with _$GetOrdersRequest {
  const factory GetOrdersRequest({
    @Default([]) List<String> productIds,
    DateTimeRange? dateRange,
    UserApp? userApp,
    String? partnerId,
  }) = _GetOrdersRequest;
}
