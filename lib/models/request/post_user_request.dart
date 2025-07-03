import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'post_user_request.freezed.dart';

@freezed
abstract class PostUserRequest with _$PostUserRequest {
  const factory PostUserRequest({
    // required List<ProductOrder> products,
    // required UserApp user,
    // required OrderInfo orderInfo,
    // required String note,
    required UserApp user,
  }) = _PostUserRequest;
}
