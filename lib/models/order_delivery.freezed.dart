// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDelivery _$OrderDeliveryFromJson(Map<String, dynamic> json) {
  return _OrderDelivery.fromJson(json);
}

/// @nodoc
mixin _$OrderDelivery {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  DeliveryStatus get status => throw _privateConstructorUsedError;
  DeliveryTime get selectedTime => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime get selectedDate => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  UserApp? get deliverBy => throw _privateConstructorUsedError;

  /// Serializes this OrderDelivery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDeliveryCopyWith<OrderDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDeliveryCopyWith<$Res> {
  factory $OrderDeliveryCopyWith(
          OrderDelivery value, $Res Function(OrderDelivery) then) =
      _$OrderDeliveryCopyWithImpl<$Res, OrderDelivery>;
  @useResult
  $Res call(
      {String id,
      String orderId,
      double weight,
      double price,
      double distance,
      DeliveryStatus status,
      DeliveryTime selectedTime,
      @TimestampToDateTimeConverter() DateTime selectedDate,
      @TimestampToDateTimeConverter() DateTime lastUpdate,
      Location destination,
      UserApp? deliverBy});

  $DeliveryTimeCopyWith<$Res> get selectedTime;
  $LocationCopyWith<$Res> get destination;
  $UserAppCopyWith<$Res>? get deliverBy;
}

/// @nodoc
class _$OrderDeliveryCopyWithImpl<$Res, $Val extends OrderDelivery>
    implements $OrderDeliveryCopyWith<$Res> {
  _$OrderDeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? weight = null,
    Object? price = null,
    Object? distance = null,
    Object? status = null,
    Object? selectedTime = null,
    Object? selectedDate = null,
    Object? lastUpdate = null,
    Object? destination = null,
    Object? deliverBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DeliveryTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      deliverBy: freezed == deliverBy
          ? _value.deliverBy
          : deliverBy // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ) as $Val);
  }

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryTimeCopyWith<$Res> get selectedTime {
    return $DeliveryTimeCopyWith<$Res>(_value.selectedTime, (value) {
      return _then(_value.copyWith(selectedTime: value) as $Val);
    });
  }

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get destination {
    return $LocationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAppCopyWith<$Res>? get deliverBy {
    if (_value.deliverBy == null) {
      return null;
    }

    return $UserAppCopyWith<$Res>(_value.deliverBy!, (value) {
      return _then(_value.copyWith(deliverBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDeliveryImplCopyWith<$Res>
    implements $OrderDeliveryCopyWith<$Res> {
  factory _$$OrderDeliveryImplCopyWith(
          _$OrderDeliveryImpl value, $Res Function(_$OrderDeliveryImpl) then) =
      __$$OrderDeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String orderId,
      double weight,
      double price,
      double distance,
      DeliveryStatus status,
      DeliveryTime selectedTime,
      @TimestampToDateTimeConverter() DateTime selectedDate,
      @TimestampToDateTimeConverter() DateTime lastUpdate,
      Location destination,
      UserApp? deliverBy});

  @override
  $DeliveryTimeCopyWith<$Res> get selectedTime;
  @override
  $LocationCopyWith<$Res> get destination;
  @override
  $UserAppCopyWith<$Res>? get deliverBy;
}

/// @nodoc
class __$$OrderDeliveryImplCopyWithImpl<$Res>
    extends _$OrderDeliveryCopyWithImpl<$Res, _$OrderDeliveryImpl>
    implements _$$OrderDeliveryImplCopyWith<$Res> {
  __$$OrderDeliveryImplCopyWithImpl(
      _$OrderDeliveryImpl _value, $Res Function(_$OrderDeliveryImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? weight = null,
    Object? price = null,
    Object? distance = null,
    Object? status = null,
    Object? selectedTime = null,
    Object? selectedDate = null,
    Object? lastUpdate = null,
    Object? destination = null,
    Object? deliverBy = freezed,
  }) {
    return _then(_$OrderDeliveryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DeliveryTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      deliverBy: freezed == deliverBy
          ? _value.deliverBy
          : deliverBy // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderDeliveryImpl implements _OrderDelivery {
  const _$OrderDeliveryImpl(
      {required this.id,
      required this.orderId,
      required this.weight,
      required this.price,
      required this.distance,
      required this.status,
      required this.selectedTime,
      @TimestampToDateTimeConverter() required this.selectedDate,
      @TimestampToDateTimeConverter() required this.lastUpdate,
      required this.destination,
      this.deliverBy});

  factory _$OrderDeliveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDeliveryImplFromJson(json);

  @override
  final String id;
  @override
  final String orderId;
  @override
  final double weight;
  @override
  final double price;
  @override
  final double distance;
  @override
  final DeliveryStatus status;
  @override
  final DeliveryTime selectedTime;
  @override
  @TimestampToDateTimeConverter()
  final DateTime selectedDate;
  @override
  @TimestampToDateTimeConverter()
  final DateTime lastUpdate;
  @override
  final Location destination;
  @override
  final UserApp? deliverBy;

  @override
  String toString() {
    return 'OrderDelivery(id: $id, orderId: $orderId, weight: $weight, price: $price, distance: $distance, status: $status, selectedTime: $selectedTime, selectedDate: $selectedDate, lastUpdate: $lastUpdate, destination: $destination, deliverBy: $deliverBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDeliveryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.deliverBy, deliverBy) ||
                other.deliverBy == deliverBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      weight,
      price,
      distance,
      status,
      selectedTime,
      selectedDate,
      lastUpdate,
      destination,
      deliverBy);

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDeliveryImplCopyWith<_$OrderDeliveryImpl> get copyWith =>
      __$$OrderDeliveryImplCopyWithImpl<_$OrderDeliveryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDeliveryImplToJson(
      this,
    );
  }
}

abstract class _OrderDelivery implements OrderDelivery {
  const factory _OrderDelivery(
      {required final String id,
      required final String orderId,
      required final double weight,
      required final double price,
      required final double distance,
      required final DeliveryStatus status,
      required final DeliveryTime selectedTime,
      @TimestampToDateTimeConverter() required final DateTime selectedDate,
      @TimestampToDateTimeConverter() required final DateTime lastUpdate,
      required final Location destination,
      final UserApp? deliverBy}) = _$OrderDeliveryImpl;

  factory _OrderDelivery.fromJson(Map<String, dynamic> json) =
      _$OrderDeliveryImpl.fromJson;

  @override
  String get id;
  @override
  String get orderId;
  @override
  double get weight;
  @override
  double get price;
  @override
  double get distance;
  @override
  DeliveryStatus get status;
  @override
  DeliveryTime get selectedTime;
  @override
  @TimestampToDateTimeConverter()
  DateTime get selectedDate;
  @override
  @TimestampToDateTimeConverter()
  DateTime get lastUpdate;
  @override
  Location get destination;
  @override
  UserApp? get deliverBy;

  /// Create a copy of OrderDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDeliveryImplCopyWith<_$OrderDeliveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
