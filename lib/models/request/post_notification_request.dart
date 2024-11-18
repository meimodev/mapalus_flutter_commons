import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_notification_request.freezed.dart';

@freezed
class PostNotificationRequest with _$PostNotificationRequest {
  const factory PostNotificationRequest({
    required String body,
    required String title,

    /// Can be String topic or fcmToken
    required String destination,
  }) = _PostNotificationRequest;
}
