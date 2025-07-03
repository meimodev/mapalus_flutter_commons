// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductOrder {

 Product get product; double get quantity; double get totalPrice;
/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOrderCopyWith<ProductOrder> get copyWith => _$ProductOrderCopyWithImpl<ProductOrder>(this as ProductOrder, _$identity);

  /// Serializes this ProductOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOrder&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,quantity,totalPrice);

@override
String toString() {
  return 'ProductOrder(product: $product, quantity: $quantity, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $ProductOrderCopyWith<$Res>  {
  factory $ProductOrderCopyWith(ProductOrder value, $Res Function(ProductOrder) _then) = _$ProductOrderCopyWithImpl;
@useResult
$Res call({
 Product product, double quantity, double totalPrice
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductOrderCopyWithImpl<$Res>
    implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._self, this._then);

  final ProductOrder _self;
  final $Res Function(ProductOrder) _then;

/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? quantity = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductOrder].
extension ProductOrderPatterns on ProductOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductOrder value)  $default,){
final _that = this;
switch (_that) {
case _ProductOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductOrder value)?  $default,){
final _that = this;
switch (_that) {
case _ProductOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product product,  double quantity,  double totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductOrder() when $default != null:
return $default(_that.product,_that.quantity,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product product,  double quantity,  double totalPrice)  $default,) {final _that = this;
switch (_that) {
case _ProductOrder():
return $default(_that.product,_that.quantity,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product product,  double quantity,  double totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _ProductOrder() when $default != null:
return $default(_that.product,_that.quantity,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductOrder implements ProductOrder {
  const _ProductOrder({required this.product, this.quantity = 0, this.totalPrice = 0});
  factory _ProductOrder.fromJson(Map<String, dynamic> json) => _$ProductOrderFromJson(json);

@override final  Product product;
@override@JsonKey() final  double quantity;
@override@JsonKey() final  double totalPrice;

/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductOrderCopyWith<_ProductOrder> get copyWith => __$ProductOrderCopyWithImpl<_ProductOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductOrder&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,quantity,totalPrice);

@override
String toString() {
  return 'ProductOrder(product: $product, quantity: $quantity, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$ProductOrderCopyWith<$Res> implements $ProductOrderCopyWith<$Res> {
  factory _$ProductOrderCopyWith(_ProductOrder value, $Res Function(_ProductOrder) _then) = __$ProductOrderCopyWithImpl;
@override @useResult
$Res call({
 Product product, double quantity, double totalPrice
});


@override $ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$ProductOrderCopyWithImpl<$Res>
    implements _$ProductOrderCopyWith<$Res> {
  __$ProductOrderCopyWithImpl(this._self, this._then);

  final _ProductOrder _self;
  final $Res Function(_ProductOrder) _then;

/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,Object? totalPrice = null,}) {
  return _then(_ProductOrder(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ProductOrder
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
