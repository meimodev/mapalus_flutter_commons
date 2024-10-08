import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/models/models.dart';

part 'update_partner_request.freezed.dart';

@freezed
class UpdatePartnerRequest with _$UpdatePartnerRequest {
  const factory UpdatePartnerRequest({
    required Partner partner,
  }) = _UpdatePartnerRequest;
}
