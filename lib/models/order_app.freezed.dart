// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderApp {

 String get id; List<ProductOrder> get products; String get partnerId; OrderStatus get status;@TimestampToDateTimeConverter() DateTime get lastUpdate;@TimestampToDateTimeConverter() DateTime get createdAt; String get note; UserApp get orderBy; Payment get payment; OrderDelivery? get delivery; Rating? get rating; Voucher? get voucher;
/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAppCopyWith<OrderApp> get copyWith => _$OrderAppCopyWithImpl<OrderApp>(this as OrderApp, _$identity);

  /// Serializes this OrderApp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderApp&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.orderBy, orderBy) || other.orderBy == orderBy)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.voucher, voucher) || other.voucher == voucher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(products),partnerId,status,lastUpdate,createdAt,note,orderBy,payment,delivery,rating,voucher);

@override
String toString() {
  return 'OrderApp(id: $id, products: $products, partnerId: $partnerId, status: $status, lastUpdate: $lastUpdate, createdAt: $createdAt, note: $note, orderBy: $orderBy, payment: $payment, delivery: $delivery, rating: $rating, voucher: $voucher)';
}


}

/// @nodoc
abstract mixin class $OrderAppCopyWith<$Res>  {
  factory $OrderAppCopyWith(OrderApp value, $Res Function(OrderApp) _then) = _$OrderAppCopyWithImpl;
@useResult
$Res call({
 String id, List<ProductOrder> products, String partnerId, OrderStatus status,@TimestampToDateTimeConverter() DateTime lastUpdate,@TimestampToDateTimeConverter() DateTime createdAt, String note, UserApp orderBy, Payment payment, OrderDelivery? delivery, Rating? rating, Voucher? voucher
});


$UserAppCopyWith<$Res> get orderBy;$PaymentCopyWith<$Res> get payment;$OrderDeliveryCopyWith<$Res>? get delivery;$RatingCopyWith<$Res>? get rating;$VoucherCopyWith<$Res>? get voucher;

}
/// @nodoc
class _$OrderAppCopyWithImpl<$Res>
    implements $OrderAppCopyWith<$Res> {
  _$OrderAppCopyWithImpl(this._self, this._then);

  final OrderApp _self;
  final $Res Function(OrderApp) _then;

/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? products = null,Object? partnerId = null,Object? status = null,Object? lastUpdate = null,Object? createdAt = null,Object? note = null,Object? orderBy = null,Object? payment = null,Object? delivery = freezed,Object? rating = freezed,Object? voucher = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductOrder>,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,orderBy: null == orderBy ? _self.orderBy : orderBy // ignore: cast_nullable_to_non_nullable
as UserApp,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as OrderDelivery?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating?,voucher: freezed == voucher ? _self.voucher : voucher // ignore: cast_nullable_to_non_nullable
as Voucher?,
  ));
}
/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res> get orderBy {
  
  return $UserAppCopyWith<$Res>(_self.orderBy, (value) {
    return _then(_self.copyWith(orderBy: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDeliveryCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $OrderDeliveryCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VoucherCopyWith<$Res>? get voucher {
    if (_self.voucher == null) {
    return null;
  }

  return $VoucherCopyWith<$Res>(_self.voucher!, (value) {
    return _then(_self.copyWith(voucher: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderApp].
extension OrderAppPatterns on OrderApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderApp value)  $default,){
final _that = this;
switch (_that) {
case _OrderApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderApp value)?  $default,){
final _that = this;
switch (_that) {
case _OrderApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<ProductOrder> products,  String partnerId,  OrderStatus status, @TimestampToDateTimeConverter()  DateTime lastUpdate, @TimestampToDateTimeConverter()  DateTime createdAt,  String note,  UserApp orderBy,  Payment payment,  OrderDelivery? delivery,  Rating? rating,  Voucher? voucher)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderApp() when $default != null:
return $default(_that.id,_that.products,_that.partnerId,_that.status,_that.lastUpdate,_that.createdAt,_that.note,_that.orderBy,_that.payment,_that.delivery,_that.rating,_that.voucher);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<ProductOrder> products,  String partnerId,  OrderStatus status, @TimestampToDateTimeConverter()  DateTime lastUpdate, @TimestampToDateTimeConverter()  DateTime createdAt,  String note,  UserApp orderBy,  Payment payment,  OrderDelivery? delivery,  Rating? rating,  Voucher? voucher)  $default,) {final _that = this;
switch (_that) {
case _OrderApp():
return $default(_that.id,_that.products,_that.partnerId,_that.status,_that.lastUpdate,_that.createdAt,_that.note,_that.orderBy,_that.payment,_that.delivery,_that.rating,_that.voucher);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<ProductOrder> products,  String partnerId,  OrderStatus status, @TimestampToDateTimeConverter()  DateTime lastUpdate, @TimestampToDateTimeConverter()  DateTime createdAt,  String note,  UserApp orderBy,  Payment payment,  OrderDelivery? delivery,  Rating? rating,  Voucher? voucher)?  $default,) {final _that = this;
switch (_that) {
case _OrderApp() when $default != null:
return $default(_that.id,_that.products,_that.partnerId,_that.status,_that.lastUpdate,_that.createdAt,_that.note,_that.orderBy,_that.payment,_that.delivery,_that.rating,_that.voucher);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OrderApp implements OrderApp {
  const _OrderApp({required this.id, required final  List<ProductOrder> products, required this.partnerId, required this.status, @TimestampToDateTimeConverter() required this.lastUpdate, @TimestampToDateTimeConverter() required this.createdAt, this.note = '', required this.orderBy, required this.payment, this.delivery, this.rating, this.voucher}): _products = products;
  factory _OrderApp.fromJson(Map<String, dynamic> json) => _$OrderAppFromJson(json);

@override final  String id;
 final  List<ProductOrder> _products;
@override List<ProductOrder> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  String partnerId;
@override final  OrderStatus status;
@override@TimestampToDateTimeConverter() final  DateTime lastUpdate;
@override@TimestampToDateTimeConverter() final  DateTime createdAt;
@override@JsonKey() final  String note;
@override final  UserApp orderBy;
@override final  Payment payment;
@override final  OrderDelivery? delivery;
@override final  Rating? rating;
@override final  Voucher? voucher;

/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderAppCopyWith<_OrderApp> get copyWith => __$OrderAppCopyWithImpl<_OrderApp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderAppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderApp&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.orderBy, orderBy) || other.orderBy == orderBy)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.voucher, voucher) || other.voucher == voucher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_products),partnerId,status,lastUpdate,createdAt,note,orderBy,payment,delivery,rating,voucher);

@override
String toString() {
  return 'OrderApp(id: $id, products: $products, partnerId: $partnerId, status: $status, lastUpdate: $lastUpdate, createdAt: $createdAt, note: $note, orderBy: $orderBy, payment: $payment, delivery: $delivery, rating: $rating, voucher: $voucher)';
}


}

/// @nodoc
abstract mixin class _$OrderAppCopyWith<$Res> implements $OrderAppCopyWith<$Res> {
  factory _$OrderAppCopyWith(_OrderApp value, $Res Function(_OrderApp) _then) = __$OrderAppCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ProductOrder> products, String partnerId, OrderStatus status,@TimestampToDateTimeConverter() DateTime lastUpdate,@TimestampToDateTimeConverter() DateTime createdAt, String note, UserApp orderBy, Payment payment, OrderDelivery? delivery, Rating? rating, Voucher? voucher
});


@override $UserAppCopyWith<$Res> get orderBy;@override $PaymentCopyWith<$Res> get payment;@override $OrderDeliveryCopyWith<$Res>? get delivery;@override $RatingCopyWith<$Res>? get rating;@override $VoucherCopyWith<$Res>? get voucher;

}
/// @nodoc
class __$OrderAppCopyWithImpl<$Res>
    implements _$OrderAppCopyWith<$Res> {
  __$OrderAppCopyWithImpl(this._self, this._then);

  final _OrderApp _self;
  final $Res Function(_OrderApp) _then;

/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? products = null,Object? partnerId = null,Object? status = null,Object? lastUpdate = null,Object? createdAt = null,Object? note = null,Object? orderBy = null,Object? payment = null,Object? delivery = freezed,Object? rating = freezed,Object? voucher = freezed,}) {
  return _then(_OrderApp(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductOrder>,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,orderBy: null == orderBy ? _self.orderBy : orderBy // ignore: cast_nullable_to_non_nullable
as UserApp,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as OrderDelivery?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating?,voucher: freezed == voucher ? _self.voucher : voucher // ignore: cast_nullable_to_non_nullable
as Voucher?,
  ));
}

/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res> get orderBy {
  
  return $UserAppCopyWith<$Res>(_self.orderBy, (value) {
    return _then(_self.copyWith(orderBy: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDeliveryCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $OrderDeliveryCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of OrderApp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VoucherCopyWith<$Res>? get voucher {
    if (_self.voucher == null) {
    return null;
  }

  return $VoucherCopyWith<$Res>(_self.voucher!, (value) {
    return _then(_self.copyWith(voucher: value));
  });
}
}

// dart format on
