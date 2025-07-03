// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateOrderRequest {

 OrderApp get orderApp;
/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOrderRequestCopyWith<UpdateOrderRequest> get copyWith => _$UpdateOrderRequestCopyWithImpl<UpdateOrderRequest>(this as UpdateOrderRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOrderRequest&&(identical(other.orderApp, orderApp) || other.orderApp == orderApp));
}


@override
int get hashCode => Object.hash(runtimeType,orderApp);

@override
String toString() {
  return 'UpdateOrderRequest(orderApp: $orderApp)';
}


}

/// @nodoc
abstract mixin class $UpdateOrderRequestCopyWith<$Res>  {
  factory $UpdateOrderRequestCopyWith(UpdateOrderRequest value, $Res Function(UpdateOrderRequest) _then) = _$UpdateOrderRequestCopyWithImpl;
@useResult
$Res call({
 OrderApp orderApp
});


$OrderAppCopyWith<$Res> get orderApp;

}
/// @nodoc
class _$UpdateOrderRequestCopyWithImpl<$Res>
    implements $UpdateOrderRequestCopyWith<$Res> {
  _$UpdateOrderRequestCopyWithImpl(this._self, this._then);

  final UpdateOrderRequest _self;
  final $Res Function(UpdateOrderRequest) _then;

/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderApp = null,}) {
  return _then(_self.copyWith(
orderApp: null == orderApp ? _self.orderApp : orderApp // ignore: cast_nullable_to_non_nullable
as OrderApp,
  ));
}
/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAppCopyWith<$Res> get orderApp {
  
  return $OrderAppCopyWith<$Res>(_self.orderApp, (value) {
    return _then(_self.copyWith(orderApp: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateOrderRequest].
extension UpdateOrderRequestPatterns on UpdateOrderRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateOrderRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateOrderRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateOrderRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateOrderRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateOrderRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderApp orderApp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateOrderRequest() when $default != null:
return $default(_that.orderApp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderApp orderApp)  $default,) {final _that = this;
switch (_that) {
case _UpdateOrderRequest():
return $default(_that.orderApp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderApp orderApp)?  $default,) {final _that = this;
switch (_that) {
case _UpdateOrderRequest() when $default != null:
return $default(_that.orderApp);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateOrderRequest implements UpdateOrderRequest {
  const _UpdateOrderRequest({required this.orderApp});
  

@override final  OrderApp orderApp;

/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateOrderRequestCopyWith<_UpdateOrderRequest> get copyWith => __$UpdateOrderRequestCopyWithImpl<_UpdateOrderRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateOrderRequest&&(identical(other.orderApp, orderApp) || other.orderApp == orderApp));
}


@override
int get hashCode => Object.hash(runtimeType,orderApp);

@override
String toString() {
  return 'UpdateOrderRequest(orderApp: $orderApp)';
}


}

/// @nodoc
abstract mixin class _$UpdateOrderRequestCopyWith<$Res> implements $UpdateOrderRequestCopyWith<$Res> {
  factory _$UpdateOrderRequestCopyWith(_UpdateOrderRequest value, $Res Function(_UpdateOrderRequest) _then) = __$UpdateOrderRequestCopyWithImpl;
@override @useResult
$Res call({
 OrderApp orderApp
});


@override $OrderAppCopyWith<$Res> get orderApp;

}
/// @nodoc
class __$UpdateOrderRequestCopyWithImpl<$Res>
    implements _$UpdateOrderRequestCopyWith<$Res> {
  __$UpdateOrderRequestCopyWithImpl(this._self, this._then);

  final _UpdateOrderRequest _self;
  final $Res Function(_UpdateOrderRequest) _then;

/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderApp = null,}) {
  return _then(_UpdateOrderRequest(
orderApp: null == orderApp ? _self.orderApp : orderApp // ignore: cast_nullable_to_non_nullable
as OrderApp,
  ));
}

/// Create a copy of UpdateOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAppCopyWith<$Res> get orderApp {
  
  return $OrderAppCopyWith<$Res>(_self.orderApp, (value) {
    return _then(_self.copyWith(orderApp: value));
  });
}
}

// dart format on
