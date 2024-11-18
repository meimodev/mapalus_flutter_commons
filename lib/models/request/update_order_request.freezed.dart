// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateOrderRequest {
  OrderApp get orderApp => throw _privateConstructorUsedError;

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateOrderRequestCopyWith<UpdateOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderRequestCopyWith<$Res> {
  factory $UpdateOrderRequestCopyWith(
          UpdateOrderRequest value, $Res Function(UpdateOrderRequest) then) =
      _$UpdateOrderRequestCopyWithImpl<$Res, UpdateOrderRequest>;
  @useResult
  $Res call({OrderApp orderApp});

  $OrderAppCopyWith<$Res> get orderApp;
}

/// @nodoc
class _$UpdateOrderRequestCopyWithImpl<$Res, $Val extends UpdateOrderRequest>
    implements $UpdateOrderRequestCopyWith<$Res> {
  _$UpdateOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderApp = null,
  }) {
    return _then(_value.copyWith(
      orderApp: null == orderApp
          ? _value.orderApp
          : orderApp // ignore: cast_nullable_to_non_nullable
              as OrderApp,
    ) as $Val);
  }

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderAppCopyWith<$Res> get orderApp {
    return $OrderAppCopyWith<$Res>(_value.orderApp, (value) {
      return _then(_value.copyWith(orderApp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateOrderRequestImplCopyWith<$Res>
    implements $UpdateOrderRequestCopyWith<$Res> {
  factory _$$UpdateOrderRequestImplCopyWith(_$UpdateOrderRequestImpl value,
          $Res Function(_$UpdateOrderRequestImpl) then) =
      __$$UpdateOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderApp orderApp});

  @override
  $OrderAppCopyWith<$Res> get orderApp;
}

/// @nodoc
class __$$UpdateOrderRequestImplCopyWithImpl<$Res>
    extends _$UpdateOrderRequestCopyWithImpl<$Res, _$UpdateOrderRequestImpl>
    implements _$$UpdateOrderRequestImplCopyWith<$Res> {
  __$$UpdateOrderRequestImplCopyWithImpl(_$UpdateOrderRequestImpl _value,
      $Res Function(_$UpdateOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderApp = null,
  }) {
    return _then(_$UpdateOrderRequestImpl(
      orderApp: null == orderApp
          ? _value.orderApp
          : orderApp // ignore: cast_nullable_to_non_nullable
              as OrderApp,
    ));
  }
}

/// @nodoc

class _$UpdateOrderRequestImpl implements _UpdateOrderRequest {
  const _$UpdateOrderRequestImpl({required this.orderApp});

  @override
  final OrderApp orderApp;

  @override
  String toString() {
    return 'UpdateOrderRequest(orderApp: $orderApp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderRequestImpl &&
            (identical(other.orderApp, orderApp) ||
                other.orderApp == orderApp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderApp);

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderRequestImplCopyWith<_$UpdateOrderRequestImpl> get copyWith =>
      __$$UpdateOrderRequestImplCopyWithImpl<_$UpdateOrderRequestImpl>(
          this, _$identity);
}

abstract class _UpdateOrderRequest implements UpdateOrderRequest {
  const factory _UpdateOrderRequest({required final OrderApp orderApp}) =
      _$UpdateOrderRequestImpl;

  @override
  OrderApp get orderApp;

  /// Create a copy of UpdateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderRequestImplCopyWith<_$UpdateOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
