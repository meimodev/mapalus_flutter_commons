// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetOrdersRequest {

 List<String> get productIds; DateTimeRange? get dateRange; UserApp? get userApp; String? get partnerId;
/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersRequestCopyWith<GetOrdersRequest> get copyWith => _$GetOrdersRequestCopyWithImpl<GetOrdersRequest>(this as GetOrdersRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersRequest&&const DeepCollectionEquality().equals(other.productIds, productIds)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&(identical(other.userApp, userApp) || other.userApp == userApp)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(productIds),dateRange,userApp,partnerId);

@override
String toString() {
  return 'GetOrdersRequest(productIds: $productIds, dateRange: $dateRange, userApp: $userApp, partnerId: $partnerId)';
}


}

/// @nodoc
abstract mixin class $GetOrdersRequestCopyWith<$Res>  {
  factory $GetOrdersRequestCopyWith(GetOrdersRequest value, $Res Function(GetOrdersRequest) _then) = _$GetOrdersRequestCopyWithImpl;
@useResult
$Res call({
 List<String> productIds, DateTimeRange? dateRange, UserApp? userApp, String? partnerId
});


$UserAppCopyWith<$Res>? get userApp;

}
/// @nodoc
class _$GetOrdersRequestCopyWithImpl<$Res>
    implements $GetOrdersRequestCopyWith<$Res> {
  _$GetOrdersRequestCopyWithImpl(this._self, this._then);

  final GetOrdersRequest _self;
  final $Res Function(GetOrdersRequest) _then;

/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productIds = null,Object? dateRange = freezed,Object? userApp = freezed,Object? partnerId = freezed,}) {
  return _then(_self.copyWith(
productIds: null == productIds ? _self.productIds : productIds // ignore: cast_nullable_to_non_nullable
as List<String>,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as DateTimeRange?,userApp: freezed == userApp ? _self.userApp : userApp // ignore: cast_nullable_to_non_nullable
as UserApp?,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res>? get userApp {
    if (_self.userApp == null) {
    return null;
  }

  return $UserAppCopyWith<$Res>(_self.userApp!, (value) {
    return _then(_self.copyWith(userApp: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetOrdersRequest].
extension GetOrdersRequestPatterns on GetOrdersRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOrdersRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrdersRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOrdersRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetOrdersRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOrdersRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetOrdersRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> productIds,  DateTimeRange? dateRange,  UserApp? userApp,  String? partnerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrdersRequest() when $default != null:
return $default(_that.productIds,_that.dateRange,_that.userApp,_that.partnerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> productIds,  DateTimeRange? dateRange,  UserApp? userApp,  String? partnerId)  $default,) {final _that = this;
switch (_that) {
case _GetOrdersRequest():
return $default(_that.productIds,_that.dateRange,_that.userApp,_that.partnerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> productIds,  DateTimeRange? dateRange,  UserApp? userApp,  String? partnerId)?  $default,) {final _that = this;
switch (_that) {
case _GetOrdersRequest() when $default != null:
return $default(_that.productIds,_that.dateRange,_that.userApp,_that.partnerId);case _:
  return null;

}
}

}

/// @nodoc


class _GetOrdersRequest implements GetOrdersRequest {
  const _GetOrdersRequest({final  List<String> productIds = const [], this.dateRange, this.userApp, this.partnerId}): _productIds = productIds;
  

 final  List<String> _productIds;
@override@JsonKey() List<String> get productIds {
  if (_productIds is EqualUnmodifiableListView) return _productIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productIds);
}

@override final  DateTimeRange? dateRange;
@override final  UserApp? userApp;
@override final  String? partnerId;

/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersRequestCopyWith<_GetOrdersRequest> get copyWith => __$GetOrdersRequestCopyWithImpl<_GetOrdersRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrdersRequest&&const DeepCollectionEquality().equals(other._productIds, _productIds)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange)&&(identical(other.userApp, userApp) || other.userApp == userApp)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productIds),dateRange,userApp,partnerId);

@override
String toString() {
  return 'GetOrdersRequest(productIds: $productIds, dateRange: $dateRange, userApp: $userApp, partnerId: $partnerId)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersRequestCopyWith<$Res> implements $GetOrdersRequestCopyWith<$Res> {
  factory _$GetOrdersRequestCopyWith(_GetOrdersRequest value, $Res Function(_GetOrdersRequest) _then) = __$GetOrdersRequestCopyWithImpl;
@override @useResult
$Res call({
 List<String> productIds, DateTimeRange? dateRange, UserApp? userApp, String? partnerId
});


@override $UserAppCopyWith<$Res>? get userApp;

}
/// @nodoc
class __$GetOrdersRequestCopyWithImpl<$Res>
    implements _$GetOrdersRequestCopyWith<$Res> {
  __$GetOrdersRequestCopyWithImpl(this._self, this._then);

  final _GetOrdersRequest _self;
  final $Res Function(_GetOrdersRequest) _then;

/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productIds = null,Object? dateRange = freezed,Object? userApp = freezed,Object? partnerId = freezed,}) {
  return _then(_GetOrdersRequest(
productIds: null == productIds ? _self._productIds : productIds // ignore: cast_nullable_to_non_nullable
as List<String>,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as DateTimeRange?,userApp: freezed == userApp ? _self.userApp : userApp // ignore: cast_nullable_to_non_nullable
as UserApp?,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GetOrdersRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res>? get userApp {
    if (_self.userApp == null) {
    return null;
  }

  return $UserAppCopyWith<$Res>(_self.userApp!, (value) {
    return _then(_self.copyWith(userApp: value));
  });
}
}

// dart format on
