// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderApp _$OrderAppFromJson(Map<String, dynamic> json) {
  return _OrderApp.fromJson(json);
}

/// @nodoc
mixin _$OrderApp {
  String get id => throw _privateConstructorUsedError;
  List<ProductOrder> get products => throw _privateConstructorUsedError;
  String get partnerId => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  UserApp get orderBy => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;
  OrderDelivery? get delivery => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  Voucher? get voucher => throw _privateConstructorUsedError;

  /// Serializes this OrderApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderAppCopyWith<OrderApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAppCopyWith<$Res> {
  factory $OrderAppCopyWith(OrderApp value, $Res Function(OrderApp) then) =
      _$OrderAppCopyWithImpl<$Res, OrderApp>;
  @useResult
  $Res call(
      {String id,
      List<ProductOrder> products,
      String partnerId,
      OrderStatus status,
      @TimestampToDateTimeConverter() DateTime lastUpdate,
      @TimestampToDateTimeConverter() DateTime createdAt,
      String note,
      UserApp orderBy,
      Payment payment,
      OrderDelivery? delivery,
      Rating? rating,
      Voucher? voucher});

  $UserAppCopyWith<$Res> get orderBy;
  $PaymentCopyWith<$Res> get payment;
  $OrderDeliveryCopyWith<$Res>? get delivery;
  $RatingCopyWith<$Res>? get rating;
  $VoucherCopyWith<$Res>? get voucher;
}

/// @nodoc
class _$OrderAppCopyWithImpl<$Res, $Val extends OrderApp>
    implements $OrderAppCopyWith<$Res> {
  _$OrderAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? partnerId = null,
    Object? status = null,
    Object? lastUpdate = null,
    Object? createdAt = null,
    Object? note = null,
    Object? orderBy = null,
    Object? payment = null,
    Object? delivery = freezed,
    Object? rating = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductOrder>,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserApp,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDelivery?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher?,
    ) as $Val);
  }

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAppCopyWith<$Res> get orderBy {
    return $UserAppCopyWith<$Res>(_value.orderBy, (value) {
      return _then(_value.copyWith(orderBy: value) as $Val);
    });
  }

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDeliveryCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $OrderDeliveryCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoucherCopyWith<$Res>? get voucher {
    if (_value.voucher == null) {
      return null;
    }

    return $VoucherCopyWith<$Res>(_value.voucher!, (value) {
      return _then(_value.copyWith(voucher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderAppImplCopyWith<$Res>
    implements $OrderAppCopyWith<$Res> {
  factory _$$OrderAppImplCopyWith(
          _$OrderAppImpl value, $Res Function(_$OrderAppImpl) then) =
      __$$OrderAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<ProductOrder> products,
      String partnerId,
      OrderStatus status,
      @TimestampToDateTimeConverter() DateTime lastUpdate,
      @TimestampToDateTimeConverter() DateTime createdAt,
      String note,
      UserApp orderBy,
      Payment payment,
      OrderDelivery? delivery,
      Rating? rating,
      Voucher? voucher});

  @override
  $UserAppCopyWith<$Res> get orderBy;
  @override
  $PaymentCopyWith<$Res> get payment;
  @override
  $OrderDeliveryCopyWith<$Res>? get delivery;
  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $VoucherCopyWith<$Res>? get voucher;
}

/// @nodoc
class __$$OrderAppImplCopyWithImpl<$Res>
    extends _$OrderAppCopyWithImpl<$Res, _$OrderAppImpl>
    implements _$$OrderAppImplCopyWith<$Res> {
  __$$OrderAppImplCopyWithImpl(
      _$OrderAppImpl _value, $Res Function(_$OrderAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? partnerId = null,
    Object? status = null,
    Object? lastUpdate = null,
    Object? createdAt = null,
    Object? note = null,
    Object? orderBy = null,
    Object? payment = null,
    Object? delivery = freezed,
    Object? rating = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_$OrderAppImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductOrder>,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as UserApp,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDelivery?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderAppImpl implements _OrderApp {
  const _$OrderAppImpl(
      {required this.id,
      required final List<ProductOrder> products,
      required this.partnerId,
      required this.status,
      @TimestampToDateTimeConverter() required this.lastUpdate,
      @TimestampToDateTimeConverter() required this.createdAt,
      this.note = '',
      required this.orderBy,
      required this.payment,
      this.delivery,
      this.rating,
      this.voucher})
      : _products = products;

  factory _$OrderAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderAppImplFromJson(json);

  @override
  final String id;
  final List<ProductOrder> _products;
  @override
  List<ProductOrder> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String partnerId;
  @override
  final OrderStatus status;
  @override
  @TimestampToDateTimeConverter()
  final DateTime lastUpdate;
  @override
  @TimestampToDateTimeConverter()
  final DateTime createdAt;
  @override
  @JsonKey()
  final String note;
  @override
  final UserApp orderBy;
  @override
  final Payment payment;
  @override
  final OrderDelivery? delivery;
  @override
  final Rating? rating;
  @override
  final Voucher? voucher;

  @override
  String toString() {
    return 'OrderApp(id: $id, products: $products, partnerId: $partnerId, status: $status, lastUpdate: $lastUpdate, createdAt: $createdAt, note: $note, orderBy: $orderBy, payment: $payment, delivery: $delivery, rating: $rating, voucher: $voucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderAppImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_products),
      partnerId,
      status,
      lastUpdate,
      createdAt,
      note,
      orderBy,
      payment,
      delivery,
      rating,
      voucher);

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderAppImplCopyWith<_$OrderAppImpl> get copyWith =>
      __$$OrderAppImplCopyWithImpl<_$OrderAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderAppImplToJson(
      this,
    );
  }
}

abstract class _OrderApp implements OrderApp {
  const factory _OrderApp(
      {required final String id,
      required final List<ProductOrder> products,
      required final String partnerId,
      required final OrderStatus status,
      @TimestampToDateTimeConverter() required final DateTime lastUpdate,
      @TimestampToDateTimeConverter() required final DateTime createdAt,
      final String note,
      required final UserApp orderBy,
      required final Payment payment,
      final OrderDelivery? delivery,
      final Rating? rating,
      final Voucher? voucher}) = _$OrderAppImpl;

  factory _OrderApp.fromJson(Map<String, dynamic> json) =
      _$OrderAppImpl.fromJson;

  @override
  String get id;
  @override
  List<ProductOrder> get products;
  @override
  String get partnerId;
  @override
  OrderStatus get status;
  @override
  @TimestampToDateTimeConverter()
  DateTime get lastUpdate;
  @override
  @TimestampToDateTimeConverter()
  DateTime get createdAt;
  @override
  String get note;
  @override
  UserApp get orderBy;
  @override
  Payment get payment;
  @override
  OrderDelivery? get delivery;
  @override
  Rating? get rating;
  @override
  Voucher? get voucher;

  /// Create a copy of OrderApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderAppImplCopyWith<_$OrderAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
