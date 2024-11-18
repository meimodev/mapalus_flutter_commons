// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostOrderRequest {
// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  OrderApp get order => throw _privateConstructorUsedError;

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostOrderRequestCopyWith<PostOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOrderRequestCopyWith<$Res> {
  factory $PostOrderRequestCopyWith(
          PostOrderRequest value, $Res Function(PostOrderRequest) then) =
      _$PostOrderRequestCopyWithImpl<$Res, PostOrderRequest>;
  @useResult
  $Res call({OrderApp order});

  $OrderAppCopyWith<$Res> get order;
}

/// @nodoc
class _$PostOrderRequestCopyWithImpl<$Res, $Val extends PostOrderRequest>
    implements $PostOrderRequestCopyWith<$Res> {
  _$PostOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderApp,
    ) as $Val);
  }

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderAppCopyWith<$Res> get order {
    return $OrderAppCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostOrderRequestImplCopyWith<$Res>
    implements $PostOrderRequestCopyWith<$Res> {
  factory _$$PostOrderRequestImplCopyWith(_$PostOrderRequestImpl value,
          $Res Function(_$PostOrderRequestImpl) then) =
      __$$PostOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderApp order});

  @override
  $OrderAppCopyWith<$Res> get order;
}

/// @nodoc
class __$$PostOrderRequestImplCopyWithImpl<$Res>
    extends _$PostOrderRequestCopyWithImpl<$Res, _$PostOrderRequestImpl>
    implements _$$PostOrderRequestImplCopyWith<$Res> {
  __$$PostOrderRequestImplCopyWithImpl(_$PostOrderRequestImpl _value,
      $Res Function(_$PostOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$PostOrderRequestImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderApp,
    ));
  }
}

/// @nodoc

class _$PostOrderRequestImpl implements _PostOrderRequest {
  const _$PostOrderRequestImpl({required this.order});

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  @override
  final OrderApp order;

  @override
  String toString() {
    return 'PostOrderRequest(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostOrderRequestImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostOrderRequestImplCopyWith<_$PostOrderRequestImpl> get copyWith =>
      __$$PostOrderRequestImplCopyWithImpl<_$PostOrderRequestImpl>(
          this, _$identity);
}

abstract class _PostOrderRequest implements PostOrderRequest {
  const factory _PostOrderRequest({required final OrderApp order}) =
      _$PostOrderRequestImpl;

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  @override
  OrderApp get order;

  /// Create a copy of PostOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostOrderRequestImplCopyWith<_$PostOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
