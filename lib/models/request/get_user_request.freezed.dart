// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserRequest {

 String? get documentId; String? get phone; int get limit;
/// Create a copy of GetUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserRequestCopyWith<GetUserRequest> get copyWith => _$GetUserRequestCopyWithImpl<GetUserRequest>(this as GetUserRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserRequest&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,documentId,phone,limit);

@override
String toString() {
  return 'GetUserRequest(documentId: $documentId, phone: $phone, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $GetUserRequestCopyWith<$Res>  {
  factory $GetUserRequestCopyWith(GetUserRequest value, $Res Function(GetUserRequest) _then) = _$GetUserRequestCopyWithImpl;
@useResult
$Res call({
 String? documentId, String? phone, int limit
});




}
/// @nodoc
class _$GetUserRequestCopyWithImpl<$Res>
    implements $GetUserRequestCopyWith<$Res> {
  _$GetUserRequestCopyWithImpl(this._self, this._then);

  final GetUserRequest _self;
  final $Res Function(GetUserRequest) _then;

/// Create a copy of GetUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = freezed,Object? phone = freezed,Object? limit = null,}) {
  return _then(_self.copyWith(
documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetUserRequest].
extension GetUserRequestPatterns on GetUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _GetUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GetUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? documentId,  String? phone,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserRequest() when $default != null:
return $default(_that.documentId,_that.phone,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? documentId,  String? phone,  int limit)  $default,) {final _that = this;
switch (_that) {
case _GetUserRequest():
return $default(_that.documentId,_that.phone,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? documentId,  String? phone,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _GetUserRequest() when $default != null:
return $default(_that.documentId,_that.phone,_that.limit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _GetUserRequest implements GetUserRequest {
  const _GetUserRequest({this.documentId, this.phone, this.limit = 0});
  

@override final  String? documentId;
@override final  String? phone;
@override@JsonKey() final  int limit;

/// Create a copy of GetUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserRequestCopyWith<_GetUserRequest> get copyWith => __$GetUserRequestCopyWithImpl<_GetUserRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserRequest&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,documentId,phone,limit);

@override
String toString() {
  return 'GetUserRequest(documentId: $documentId, phone: $phone, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetUserRequestCopyWith<$Res> implements $GetUserRequestCopyWith<$Res> {
  factory _$GetUserRequestCopyWith(_GetUserRequest value, $Res Function(_GetUserRequest) _then) = __$GetUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String? documentId, String? phone, int limit
});




}
/// @nodoc
class __$GetUserRequestCopyWithImpl<$Res>
    implements _$GetUserRequestCopyWith<$Res> {
  __$GetUserRequestCopyWithImpl(this._self, this._then);

  final _GetUserRequest _self;
  final $Res Function(_GetUserRequest) _then;

/// Create a copy of GetUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = freezed,Object? phone = freezed,Object? limit = null,}) {
  return _then(_GetUserRequest(
documentId: freezed == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
