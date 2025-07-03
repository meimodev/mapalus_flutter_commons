// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetProductRequest {

 String get productId; String get searchText; String get partnerId; int get limit;
/// Create a copy of GetProductRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductRequestCopyWith<GetProductRequest> get copyWith => _$GetProductRequestCopyWithImpl<GetProductRequest>(this as GetProductRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductRequest&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,productId,searchText,partnerId,limit);

@override
String toString() {
  return 'GetProductRequest(productId: $productId, searchText: $searchText, partnerId: $partnerId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetProductRequestCopyWith<$Res>  {
  factory $GetProductRequestCopyWith(GetProductRequest value, $Res Function(GetProductRequest) _then) = _$GetProductRequestCopyWithImpl;
@useResult
$Res call({
 String productId, String searchText, String partnerId, int limit
});




}
/// @nodoc
class _$GetProductRequestCopyWithImpl<$Res>
    implements $GetProductRequestCopyWith<$Res> {
  _$GetProductRequestCopyWithImpl(this._self, this._then);

  final GetProductRequest _self;
  final $Res Function(GetProductRequest) _then;

/// Create a copy of GetProductRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? searchText = null,Object? partnerId = null,Object? limit = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProductRequest].
extension GetProductRequestPatterns on GetProductRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProductRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProductRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProductRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetProductRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProductRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetProductRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String searchText,  String partnerId,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProductRequest() when $default != null:
return $default(_that.productId,_that.searchText,_that.partnerId,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String searchText,  String partnerId,  int limit)  $default,) {final _that = this;
switch (_that) {
case _GetProductRequest():
return $default(_that.productId,_that.searchText,_that.partnerId,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String searchText,  String partnerId,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _GetProductRequest() when $default != null:
return $default(_that.productId,_that.searchText,_that.partnerId,_that.limit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _GetProductRequest implements GetProductRequest {
  const _GetProductRequest({this.productId = '', this.searchText = '', this.partnerId = '', this.limit = 0});
  

@override@JsonKey() final  String productId;
@override@JsonKey() final  String searchText;
@override@JsonKey() final  String partnerId;
@override@JsonKey() final  int limit;

/// Create a copy of GetProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductRequestCopyWith<_GetProductRequest> get copyWith => __$GetProductRequestCopyWithImpl<_GetProductRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductRequest&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,productId,searchText,partnerId,limit);

@override
String toString() {
  return 'GetProductRequest(productId: $productId, searchText: $searchText, partnerId: $partnerId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetProductRequestCopyWith<$Res> implements $GetProductRequestCopyWith<$Res> {
  factory _$GetProductRequestCopyWith(_GetProductRequest value, $Res Function(_GetProductRequest) _then) = __$GetProductRequestCopyWithImpl;
@override @useResult
$Res call({
 String productId, String searchText, String partnerId, int limit
});




}
/// @nodoc
class __$GetProductRequestCopyWithImpl<$Res>
    implements _$GetProductRequestCopyWith<$Res> {
  __$GetProductRequestCopyWithImpl(this._self, this._then);

  final _GetProductRequest _self;
  final $Res Function(_GetProductRequest) _then;

/// Create a copy of GetProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? searchText = null,Object? partnerId = null,Object? limit = null,}) {
  return _then(_GetProductRequest(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
