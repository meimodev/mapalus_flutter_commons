import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'post_notification_request.freezed.dart';

@freezed
class PostNotificationRequest with _$PostNotificationRequest {
  const factory PostNotificationRequest({
    required String messageBody,
    required String messageTitle,
    String? topic,
    UserApp? destinationUser,
  }) = _PostNotificationRequest;
}
