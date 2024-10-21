import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_request.freezed.dart';
part 'get_user_request.g.dart';

@freezed
class GetUserRequest with _$GetUserRequest {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetUserRequest({
    String? documentId,
    String? phone,
    @Default(0) int limit,
  }) = _GetUserRequest;
}
