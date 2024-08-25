import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';

part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Rating({
    required String id,
    required String orderId,
    required String userId,
    @Default("") String message,
    @Default(0) int rate,
    required DateTime createdAt,
  }) = _Rating;

  factory Rating.fromJson(Map<String, Object?> json) =>
      _$RatingFromJson(json);
}
