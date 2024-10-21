import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_partner_request.freezed.dart';
part 'get_partner_request.g.dart';

@freezed
class GetPartnerRequest with _$GetPartnerRequest {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetPartnerRequest({
    String? partnerId,
    @Default(0) int limit,
  }) = _GetPartnerRequest;
}
