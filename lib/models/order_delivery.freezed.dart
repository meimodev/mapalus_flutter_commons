// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDelivery {

 String get id; String get orderId; double get weight; double get price; double get distance; DeliveryStatus get status; DeliveryTime get selectedTime;@TimestampToDateTimeConverter() DateTime get selectedDate;@TimestampToDateTimeConverter() DateTime get lastUpdate; Location get destination; UserApp? get deliverBy;
/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDeliveryCopyWith<OrderDelivery> get copyWith => _$OrderDeliveryCopyWithImpl<OrderDelivery>(this as OrderDelivery, _$identity);

  /// Serializes this OrderDelivery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDelivery&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.price, price) || other.price == price)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.deliverBy, deliverBy) || other.deliverBy == deliverBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,weight,price,distance,status,selectedTime,selectedDate,lastUpdate,destination,deliverBy);

@override
String toString() {
  return 'OrderDelivery(id: $id, orderId: $orderId, weight: $weight, price: $price, distance: $distance, status: $status, selectedTime: $selectedTime, selectedDate: $selectedDate, lastUpdate: $lastUpdate, destination: $destination, deliverBy: $deliverBy)';
}


}

/// @nodoc
abstract mixin class $OrderDeliveryCopyWith<$Res>  {
  factory $OrderDeliveryCopyWith(OrderDelivery value, $Res Function(OrderDelivery) _then) = _$OrderDeliveryCopyWithImpl;
@useResult
$Res call({
 String id, String orderId, double weight, double price, double distance, DeliveryStatus status, DeliveryTime selectedTime,@TimestampToDateTimeConverter() DateTime selectedDate,@TimestampToDateTimeConverter() DateTime lastUpdate, Location destination, UserApp? deliverBy
});


$DeliveryTimeCopyWith<$Res> get selectedTime;$LocationCopyWith<$Res> get destination;$UserAppCopyWith<$Res>? get deliverBy;

}
/// @nodoc
class _$OrderDeliveryCopyWithImpl<$Res>
    implements $OrderDeliveryCopyWith<$Res> {
  _$OrderDeliveryCopyWithImpl(this._self, this._then);

  final OrderDelivery _self;
  final $Res Function(OrderDelivery) _then;

/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? weight = null,Object? price = null,Object? distance = null,Object? status = null,Object? selectedTime = null,Object? selectedDate = null,Object? lastUpdate = null,Object? destination = null,Object? deliverBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,selectedTime: null == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as DeliveryTime,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Location,deliverBy: freezed == deliverBy ? _self.deliverBy : deliverBy // ignore: cast_nullable_to_non_nullable
as UserApp?,
  ));
}
/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryTimeCopyWith<$Res> get selectedTime {
  
  return $DeliveryTimeCopyWith<$Res>(_self.selectedTime, (value) {
    return _then(_self.copyWith(selectedTime: value));
  });
}/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get destination {
  
  return $LocationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res>? get deliverBy {
    if (_self.deliverBy == null) {
    return null;
  }

  return $UserAppCopyWith<$Res>(_self.deliverBy!, (value) {
    return _then(_self.copyWith(deliverBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDelivery].
extension OrderDeliveryPatterns on OrderDelivery {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDelivery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDelivery() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDelivery value)  $default,){
final _that = this;
switch (_that) {
case _OrderDelivery():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDelivery value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDelivery() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String orderId,  double weight,  double price,  double distance,  DeliveryStatus status,  DeliveryTime selectedTime, @TimestampToDateTimeConverter()  DateTime selectedDate, @TimestampToDateTimeConverter()  DateTime lastUpdate,  Location destination,  UserApp? deliverBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDelivery() when $default != null:
return $default(_that.id,_that.orderId,_that.weight,_that.price,_that.distance,_that.status,_that.selectedTime,_that.selectedDate,_that.lastUpdate,_that.destination,_that.deliverBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String orderId,  double weight,  double price,  double distance,  DeliveryStatus status,  DeliveryTime selectedTime, @TimestampToDateTimeConverter()  DateTime selectedDate, @TimestampToDateTimeConverter()  DateTime lastUpdate,  Location destination,  UserApp? deliverBy)  $default,) {final _that = this;
switch (_that) {
case _OrderDelivery():
return $default(_that.id,_that.orderId,_that.weight,_that.price,_that.distance,_that.status,_that.selectedTime,_that.selectedDate,_that.lastUpdate,_that.destination,_that.deliverBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String orderId,  double weight,  double price,  double distance,  DeliveryStatus status,  DeliveryTime selectedTime, @TimestampToDateTimeConverter()  DateTime selectedDate, @TimestampToDateTimeConverter()  DateTime lastUpdate,  Location destination,  UserApp? deliverBy)?  $default,) {final _that = this;
switch (_that) {
case _OrderDelivery() when $default != null:
return $default(_that.id,_that.orderId,_that.weight,_that.price,_that.distance,_that.status,_that.selectedTime,_that.selectedDate,_that.lastUpdate,_that.destination,_that.deliverBy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OrderDelivery implements OrderDelivery {
  const _OrderDelivery({required this.id, required this.orderId, required this.weight, required this.price, required this.distance, required this.status, required this.selectedTime, @TimestampToDateTimeConverter() required this.selectedDate, @TimestampToDateTimeConverter() required this.lastUpdate, required this.destination, this.deliverBy});
  factory _OrderDelivery.fromJson(Map<String, dynamic> json) => _$OrderDeliveryFromJson(json);

@override final  String id;
@override final  String orderId;
@override final  double weight;
@override final  double price;
@override final  double distance;
@override final  DeliveryStatus status;
@override final  DeliveryTime selectedTime;
@override@TimestampToDateTimeConverter() final  DateTime selectedDate;
@override@TimestampToDateTimeConverter() final  DateTime lastUpdate;
@override final  Location destination;
@override final  UserApp? deliverBy;

/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDeliveryCopyWith<_OrderDelivery> get copyWith => __$OrderDeliveryCopyWithImpl<_OrderDelivery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDeliveryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDelivery&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.price, price) || other.price == price)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.deliverBy, deliverBy) || other.deliverBy == deliverBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,weight,price,distance,status,selectedTime,selectedDate,lastUpdate,destination,deliverBy);

@override
String toString() {
  return 'OrderDelivery(id: $id, orderId: $orderId, weight: $weight, price: $price, distance: $distance, status: $status, selectedTime: $selectedTime, selectedDate: $selectedDate, lastUpdate: $lastUpdate, destination: $destination, deliverBy: $deliverBy)';
}


}

/// @nodoc
abstract mixin class _$OrderDeliveryCopyWith<$Res> implements $OrderDeliveryCopyWith<$Res> {
  factory _$OrderDeliveryCopyWith(_OrderDelivery value, $Res Function(_OrderDelivery) _then) = __$OrderDeliveryCopyWithImpl;
@override @useResult
$Res call({
 String id, String orderId, double weight, double price, double distance, DeliveryStatus status, DeliveryTime selectedTime,@TimestampToDateTimeConverter() DateTime selectedDate,@TimestampToDateTimeConverter() DateTime lastUpdate, Location destination, UserApp? deliverBy
});


@override $DeliveryTimeCopyWith<$Res> get selectedTime;@override $LocationCopyWith<$Res> get destination;@override $UserAppCopyWith<$Res>? get deliverBy;

}
/// @nodoc
class __$OrderDeliveryCopyWithImpl<$Res>
    implements _$OrderDeliveryCopyWith<$Res> {
  __$OrderDeliveryCopyWithImpl(this._self, this._then);

  final _OrderDelivery _self;
  final $Res Function(_OrderDelivery) _then;

/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? weight = null,Object? price = null,Object? distance = null,Object? status = null,Object? selectedTime = null,Object? selectedDate = null,Object? lastUpdate = null,Object? destination = null,Object? deliverBy = freezed,}) {
  return _then(_OrderDelivery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,selectedTime: null == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as DeliveryTime,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Location,deliverBy: freezed == deliverBy ? _self.deliverBy : deliverBy // ignore: cast_nullable_to_non_nullable
as UserApp?,
  ));
}

/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryTimeCopyWith<$Res> get selectedTime {
  
  return $DeliveryTimeCopyWith<$Res>(_self.selectedTime, (value) {
    return _then(_self.copyWith(selectedTime: value));
  });
}/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get destination {
  
  return $LocationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of OrderDelivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res>? get deliverBy {
    if (_self.deliverBy == null) {
    return null;
  }

  return $UserAppCopyWith<$Res>(_self.deliverBy!, (value) {
    return _then(_self.copyWith(deliverBy: value));
  });
}
}

// dart format on
