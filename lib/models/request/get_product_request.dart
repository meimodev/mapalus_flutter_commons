import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_request.freezed.dart';
part 'get_product_request.g.dart';

@freezed
class GetProductRequest with _$GetProductRequest {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetProductRequest({
    @Default('') String productId,
    @Default('') String searchText,
    @Default('') String partnerId,
    @Default(0) int limit,
  }) = _GetProductRequest;
}
