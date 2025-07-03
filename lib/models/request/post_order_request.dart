import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'post_order_request.freezed.dart';

@freezed
abstract class PostOrderRequest with _$PostOrderRequest {
  const factory PostOrderRequest({
    // required List<ProductOrder> products,
    // required UserApp user,
    // required OrderInfo orderInfo,
    // required String note,
   required OrderApp order,
  }) = _PostOrderRequest;

}

