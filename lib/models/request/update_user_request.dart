import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'update_user_request.freezed.dart';

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required UserApp user,
  }) = _UpdateUserRequest;
}
