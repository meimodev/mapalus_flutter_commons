// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUserRequest {

 UserApp get user;
/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith => _$UpdateUserRequestCopyWithImpl<UpdateUserRequest>(this as UpdateUserRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserRequest&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UpdateUserRequest(user: $user)';
}


}

/// @nodoc
abstract mixin class $UpdateUserRequestCopyWith<$Res>  {
  factory $UpdateUserRequestCopyWith(UpdateUserRequest value, $Res Function(UpdateUserRequest) _then) = _$UpdateUserRequestCopyWithImpl;
@useResult
$Res call({
 UserApp user
});


$UserAppCopyWith<$Res> get user;

}
/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final UpdateUserRequest _self;
  final $Res Function(UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserApp,
  ));
}
/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res> get user {
  
  return $UserAppCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateUserRequest].
extension UpdateUserRequestPatterns on UpdateUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserApp user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserApp user)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequest():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserApp user)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUserRequest implements UpdateUserRequest {
  const _UpdateUserRequest({required this.user});
  

@override final  UserApp user;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith => __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserRequest&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UpdateUserRequest(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserRequestCopyWith<$Res> implements $UpdateUserRequestCopyWith<$Res> {
  factory _$UpdateUserRequestCopyWith(_UpdateUserRequest value, $Res Function(_UpdateUserRequest) _then) = __$UpdateUserRequestCopyWithImpl;
@override @useResult
$Res call({
 UserApp user
});


@override $UserAppCopyWith<$Res> get user;

}
/// @nodoc
class __$UpdateUserRequestCopyWithImpl<$Res>
    implements _$UpdateUserRequestCopyWith<$Res> {
  __$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final _UpdateUserRequest _self;
  final $Res Function(_UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UpdateUserRequest(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserApp,
  ));
}

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAppCopyWith<$Res> get user {
  
  return $UserAppCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
