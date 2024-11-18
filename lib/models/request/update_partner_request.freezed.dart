// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_partner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePartnerRequest {
  Partner get partner => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePartnerRequestCopyWith<UpdatePartnerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePartnerRequestCopyWith<$Res> {
  factory $UpdatePartnerRequestCopyWith(UpdatePartnerRequest value,
          $Res Function(UpdatePartnerRequest) then) =
      _$UpdatePartnerRequestCopyWithImpl<$Res, UpdatePartnerRequest>;
  @useResult
  $Res call({Partner partner});

  $PartnerCopyWith<$Res> get partner;
}

/// @nodoc
class _$UpdatePartnerRequestCopyWithImpl<$Res,
        $Val extends UpdatePartnerRequest>
    implements $UpdatePartnerRequestCopyWith<$Res> {
  _$UpdatePartnerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_value.copyWith(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner,
    ) as $Val);
  }

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res> get partner {
    return $PartnerCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePartnerRequestImplCopyWith<$Res>
    implements $UpdatePartnerRequestCopyWith<$Res> {
  factory _$$UpdatePartnerRequestImplCopyWith(_$UpdatePartnerRequestImpl value,
          $Res Function(_$UpdatePartnerRequestImpl) then) =
      __$$UpdatePartnerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Partner partner});

  @override
  $PartnerCopyWith<$Res> get partner;
}

/// @nodoc
class __$$UpdatePartnerRequestImplCopyWithImpl<$Res>
    extends _$UpdatePartnerRequestCopyWithImpl<$Res, _$UpdatePartnerRequestImpl>
    implements _$$UpdatePartnerRequestImplCopyWith<$Res> {
  __$$UpdatePartnerRequestImplCopyWithImpl(_$UpdatePartnerRequestImpl _value,
      $Res Function(_$UpdatePartnerRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_$UpdatePartnerRequestImpl(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as Partner,
    ));
  }
}

/// @nodoc

class _$UpdatePartnerRequestImpl implements _UpdatePartnerRequest {
  const _$UpdatePartnerRequestImpl({required this.partner});

  @override
  final Partner partner;

  @override
  String toString() {
    return 'UpdatePartnerRequest(partner: $partner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePartnerRequestImpl &&
            (identical(other.partner, partner) || other.partner == partner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partner);

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePartnerRequestImplCopyWith<_$UpdatePartnerRequestImpl>
      get copyWith =>
          __$$UpdatePartnerRequestImplCopyWithImpl<_$UpdatePartnerRequestImpl>(
              this, _$identity);
}

abstract class _UpdatePartnerRequest implements UpdatePartnerRequest {
  const factory _UpdatePartnerRequest({required final Partner partner}) =
      _$UpdatePartnerRequestImpl;

  @override
  Partner get partner;

  /// Create a copy of UpdatePartnerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePartnerRequestImplCopyWith<_$UpdatePartnerRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
