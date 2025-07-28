// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_partner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPartnerRequest {

 String? get partnerId; int get limit;
/// Create a copy of GetPartnerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPartnerRequestCopyWith<GetPartnerRequest> get copyWith => _$GetPartnerRequestCopyWithImpl<GetPartnerRequest>(this as GetPartnerRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPartnerRequest&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,partnerId,limit);

@override
String toString() {
  return 'GetPartnerRequest(partnerId: $partnerId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetPartnerRequestCopyWith<$Res>  {
  factory $GetPartnerRequestCopyWith(GetPartnerRequest value, $Res Function(GetPartnerRequest) _then) = _$GetPartnerRequestCopyWithImpl;
@useResult
$Res call({
 String? partnerId, int limit
});




}
/// @nodoc
class _$GetPartnerRequestCopyWithImpl<$Res>
    implements $GetPartnerRequestCopyWith<$Res> {
  _$GetPartnerRequestCopyWithImpl(this._self, this._then);

  final GetPartnerRequest _self;
  final $Res Function(GetPartnerRequest) _then;

/// Create a copy of GetPartnerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? partnerId = freezed,Object? limit = null,}) {
  return _then(_self.copyWith(
partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPartnerRequest].
extension GetPartnerRequestPatterns on GetPartnerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPartnerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPartnerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPartnerRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetPartnerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPartnerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetPartnerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? partnerId,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPartnerRequest() when $default != null:
return $default(_that.partnerId,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? partnerId,  int limit)  $default,) {final _that = this;
switch (_that) {
case _GetPartnerRequest():
return $default(_that.partnerId,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? partnerId,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _GetPartnerRequest() when $default != null:
return $default(_that.partnerId,_that.limit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _GetPartnerRequest implements GetPartnerRequest {
  const _GetPartnerRequest({this.partnerId, this.limit = 0});
  

@override final  String? partnerId;
@override@JsonKey() final  int limit;

/// Create a copy of GetPartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPartnerRequestCopyWith<_GetPartnerRequest> get copyWith => __$GetPartnerRequestCopyWithImpl<_GetPartnerRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPartnerRequest&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,partnerId,limit);

@override
String toString() {
  return 'GetPartnerRequest(partnerId: $partnerId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetPartnerRequestCopyWith<$Res> implements $GetPartnerRequestCopyWith<$Res> {
  factory _$GetPartnerRequestCopyWith(_GetPartnerRequest value, $Res Function(_GetPartnerRequest) _then) = __$GetPartnerRequestCopyWithImpl;
@override @useResult
$Res call({
 String? partnerId, int limit
});




}
/// @nodoc
class __$GetPartnerRequestCopyWithImpl<$Res>
    implements _$GetPartnerRequestCopyWith<$Res> {
  __$GetPartnerRequestCopyWithImpl(this._self, this._then);

  final _GetPartnerRequest _self;
  final $Res Function(_GetPartnerRequest) _then;

/// Create a copy of GetPartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? partnerId = freezed,Object? limit = null,}) {
  return _then(_GetPartnerRequest(
partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
