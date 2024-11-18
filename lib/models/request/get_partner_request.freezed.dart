// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_partner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPartnerRequest {
  String? get partnerId => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetPartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPartnerRequestCopyWith<GetPartnerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPartnerRequestCopyWith<$Res> {
  factory $GetPartnerRequestCopyWith(
          GetPartnerRequest value, $Res Function(GetPartnerRequest) then) =
      _$GetPartnerRequestCopyWithImpl<$Res, GetPartnerRequest>;
  @useResult
  $Res call({String? partnerId, int limit});
}

/// @nodoc
class _$GetPartnerRequestCopyWithImpl<$Res, $Val extends GetPartnerRequest>
    implements $GetPartnerRequestCopyWith<$Res> {
  _$GetPartnerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerId = freezed,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPartnerRequestImplCopyWith<$Res>
    implements $GetPartnerRequestCopyWith<$Res> {
  factory _$$GetPartnerRequestImplCopyWith(_$GetPartnerRequestImpl value,
          $Res Function(_$GetPartnerRequestImpl) then) =
      __$$GetPartnerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? partnerId, int limit});
}

/// @nodoc
class __$$GetPartnerRequestImplCopyWithImpl<$Res>
    extends _$GetPartnerRequestCopyWithImpl<$Res, _$GetPartnerRequestImpl>
    implements _$$GetPartnerRequestImplCopyWith<$Res> {
  __$$GetPartnerRequestImplCopyWithImpl(_$GetPartnerRequestImpl _value,
      $Res Function(_$GetPartnerRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerId = freezed,
    Object? limit = null,
  }) {
    return _then(_$GetPartnerRequestImpl(
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GetPartnerRequestImpl implements _GetPartnerRequest {
  const _$GetPartnerRequestImpl({this.partnerId, this.limit = 0});

  @override
  final String? partnerId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetPartnerRequest(partnerId: $partnerId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartnerRequestImpl &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partnerId, limit);

  /// Create a copy of GetPartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartnerRequestImplCopyWith<_$GetPartnerRequestImpl> get copyWith =>
      __$$GetPartnerRequestImplCopyWithImpl<_$GetPartnerRequestImpl>(
          this, _$identity);
}

abstract class _GetPartnerRequest implements GetPartnerRequest {
  const factory _GetPartnerRequest({final String? partnerId, final int limit}) =
      _$GetPartnerRequestImpl;

  @override
  String? get partnerId;
  @override
  int get limit;

  /// Create a copy of GetPartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPartnerRequestImplCopyWith<_$GetPartnerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
