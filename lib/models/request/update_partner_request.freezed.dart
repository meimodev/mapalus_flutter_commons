// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_partner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdatePartnerRequest {

 Partner get partner;
/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePartnerRequestCopyWith<UpdatePartnerRequest> get copyWith => _$UpdatePartnerRequestCopyWithImpl<UpdatePartnerRequest>(this as UpdatePartnerRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePartnerRequest&&(identical(other.partner, partner) || other.partner == partner));
}


@override
int get hashCode => Object.hash(runtimeType,partner);

@override
String toString() {
  return 'UpdatePartnerRequest(partner: $partner)';
}


}

/// @nodoc
abstract mixin class $UpdatePartnerRequestCopyWith<$Res>  {
  factory $UpdatePartnerRequestCopyWith(UpdatePartnerRequest value, $Res Function(UpdatePartnerRequest) _then) = _$UpdatePartnerRequestCopyWithImpl;
@useResult
$Res call({
 Partner partner
});


$PartnerCopyWith<$Res> get partner;

}
/// @nodoc
class _$UpdatePartnerRequestCopyWithImpl<$Res>
    implements $UpdatePartnerRequestCopyWith<$Res> {
  _$UpdatePartnerRequestCopyWithImpl(this._self, this._then);

  final UpdatePartnerRequest _self;
  final $Res Function(UpdatePartnerRequest) _then;

/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? partner = null,}) {
  return _then(_self.copyWith(
partner: null == partner ? _self.partner : partner // ignore: cast_nullable_to_non_nullable
as Partner,
  ));
}
/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PartnerCopyWith<$Res> get partner {
  
  return $PartnerCopyWith<$Res>(_self.partner, (value) {
    return _then(_self.copyWith(partner: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdatePartnerRequest].
extension UpdatePartnerRequestPatterns on UpdatePartnerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePartnerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePartnerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePartnerRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePartnerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePartnerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePartnerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Partner partner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePartnerRequest() when $default != null:
return $default(_that.partner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Partner partner)  $default,) {final _that = this;
switch (_that) {
case _UpdatePartnerRequest():
return $default(_that.partner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Partner partner)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePartnerRequest() when $default != null:
return $default(_that.partner);case _:
  return null;

}
}

}

/// @nodoc


class _UpdatePartnerRequest implements UpdatePartnerRequest {
  const _UpdatePartnerRequest({required this.partner});
  

@override final  Partner partner;

/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePartnerRequestCopyWith<_UpdatePartnerRequest> get copyWith => __$UpdatePartnerRequestCopyWithImpl<_UpdatePartnerRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePartnerRequest&&(identical(other.partner, partner) || other.partner == partner));
}


@override
int get hashCode => Object.hash(runtimeType,partner);

@override
String toString() {
  return 'UpdatePartnerRequest(partner: $partner)';
}


}

/// @nodoc
abstract mixin class _$UpdatePartnerRequestCopyWith<$Res> implements $UpdatePartnerRequestCopyWith<$Res> {
  factory _$UpdatePartnerRequestCopyWith(_UpdatePartnerRequest value, $Res Function(_UpdatePartnerRequest) _then) = __$UpdatePartnerRequestCopyWithImpl;
@override @useResult
$Res call({
 Partner partner
});


@override $PartnerCopyWith<$Res> get partner;

}
/// @nodoc
class __$UpdatePartnerRequestCopyWithImpl<$Res>
    implements _$UpdatePartnerRequestCopyWith<$Res> {
  __$UpdatePartnerRequestCopyWithImpl(this._self, this._then);

  final _UpdatePartnerRequest _self;
  final $Res Function(_UpdatePartnerRequest) _then;

/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? partner = null,}) {
  return _then(_UpdatePartnerRequest(
partner: null == partner ? _self.partner : partner // ignore: cast_nullable_to_non_nullable
as Partner,
  ));
}

/// Create a copy of UpdatePartnerRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PartnerCopyWith<$Res> get partner {
  
  return $PartnerCopyWith<$Res>(_self.partner, (value) {
    return _then(_self.copyWith(partner: value));
  });
}
}

// dart format on
