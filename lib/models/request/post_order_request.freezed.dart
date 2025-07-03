// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostOrderRequest {

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
 OrderApp get order;
/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostOrderRequestCopyWith<PostOrderRequest> get copyWith => _$PostOrderRequestCopyWithImpl<PostOrderRequest>(this as PostOrderRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostOrderRequest&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'PostOrderRequest(order: $order)';
}


}

/// @nodoc
abstract mixin class $PostOrderRequestCopyWith<$Res>  {
  factory $PostOrderRequestCopyWith(PostOrderRequest value, $Res Function(PostOrderRequest) _then) = _$PostOrderRequestCopyWithImpl;
@useResult
$Res call({
 OrderApp order
});


$OrderAppCopyWith<$Res> get order;

}
/// @nodoc
class _$PostOrderRequestCopyWithImpl<$Res>
    implements $PostOrderRequestCopyWith<$Res> {
  _$PostOrderRequestCopyWithImpl(this._self, this._then);

  final PostOrderRequest _self;
  final $Res Function(PostOrderRequest) _then;

/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = null,}) {
  return _then(_self.copyWith(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderApp,
  ));
}
/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAppCopyWith<$Res> get order {
  
  return $OrderAppCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostOrderRequest].
extension PostOrderRequestPatterns on PostOrderRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostOrderRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostOrderRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostOrderRequest value)  $default,){
final _that = this;
switch (_that) {
case _PostOrderRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostOrderRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PostOrderRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderApp order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostOrderRequest() when $default != null:
return $default(_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderApp order)  $default,) {final _that = this;
switch (_that) {
case _PostOrderRequest():
return $default(_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderApp order)?  $default,) {final _that = this;
switch (_that) {
case _PostOrderRequest() when $default != null:
return $default(_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _PostOrderRequest implements PostOrderRequest {
  const _PostOrderRequest({required this.order});
  

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
@override final  OrderApp order;

/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostOrderRequestCopyWith<_PostOrderRequest> get copyWith => __$PostOrderRequestCopyWithImpl<_PostOrderRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostOrderRequest&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'PostOrderRequest(order: $order)';
}


}

/// @nodoc
abstract mixin class _$PostOrderRequestCopyWith<$Res> implements $PostOrderRequestCopyWith<$Res> {
  factory _$PostOrderRequestCopyWith(_PostOrderRequest value, $Res Function(_PostOrderRequest) _then) = __$PostOrderRequestCopyWithImpl;
@override @useResult
$Res call({
 OrderApp order
});


@override $OrderAppCopyWith<$Res> get order;

}
/// @nodoc
class __$PostOrderRequestCopyWithImpl<$Res>
    implements _$PostOrderRequestCopyWith<$Res> {
  __$PostOrderRequestCopyWithImpl(this._self, this._then);

  final _PostOrderRequest _self;
  final $Res Function(_PostOrderRequest) _then;

/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(_PostOrderRequest(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderApp,
  ));
}

/// Create a copy of PostOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAppCopyWith<$Res> get order {
  
  return $OrderAppCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
