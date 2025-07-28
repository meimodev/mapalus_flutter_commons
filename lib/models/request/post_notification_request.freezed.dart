// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostNotificationRequest {

 String get body; String get title;/// Can be String topic or fcmToken
 String get destination;
/// Create a copy of PostNotificationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostNotificationRequestCopyWith<PostNotificationRequest> get copyWith => _$PostNotificationRequestCopyWithImpl<PostNotificationRequest>(this as PostNotificationRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostNotificationRequest&&(identical(other.body, body) || other.body == body)&&(identical(other.title, title) || other.title == title)&&(identical(other.destination, destination) || other.destination == destination));
}


@override
int get hashCode => Object.hash(runtimeType,body,title,destination);

@override
String toString() {
  return 'PostNotificationRequest(body: $body, title: $title, destination: $destination)';
}


}

/// @nodoc
abstract mixin class $PostNotificationRequestCopyWith<$Res>  {
  factory $PostNotificationRequestCopyWith(PostNotificationRequest value, $Res Function(PostNotificationRequest) _then) = _$PostNotificationRequestCopyWithImpl;
@useResult
$Res call({
 String body, String title, String destination
});




}
/// @nodoc
class _$PostNotificationRequestCopyWithImpl<$Res>
    implements $PostNotificationRequestCopyWith<$Res> {
  _$PostNotificationRequestCopyWithImpl(this._self, this._then);

  final PostNotificationRequest _self;
  final $Res Function(PostNotificationRequest) _then;

/// Create a copy of PostNotificationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,Object? title = null,Object? destination = null,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostNotificationRequest].
extension PostNotificationRequestPatterns on PostNotificationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostNotificationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostNotificationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostNotificationRequest value)  $default,){
final _that = this;
switch (_that) {
case _PostNotificationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostNotificationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PostNotificationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body,  String title,  String destination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostNotificationRequest() when $default != null:
return $default(_that.body,_that.title,_that.destination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body,  String title,  String destination)  $default,) {final _that = this;
switch (_that) {
case _PostNotificationRequest():
return $default(_that.body,_that.title,_that.destination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body,  String title,  String destination)?  $default,) {final _that = this;
switch (_that) {
case _PostNotificationRequest() when $default != null:
return $default(_that.body,_that.title,_that.destination);case _:
  return null;

}
}

}

/// @nodoc


class _PostNotificationRequest implements PostNotificationRequest {
  const _PostNotificationRequest({required this.body, required this.title, required this.destination});
  

@override final  String body;
@override final  String title;
/// Can be String topic or fcmToken
@override final  String destination;

/// Create a copy of PostNotificationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostNotificationRequestCopyWith<_PostNotificationRequest> get copyWith => __$PostNotificationRequestCopyWithImpl<_PostNotificationRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostNotificationRequest&&(identical(other.body, body) || other.body == body)&&(identical(other.title, title) || other.title == title)&&(identical(other.destination, destination) || other.destination == destination));
}


@override
int get hashCode => Object.hash(runtimeType,body,title,destination);

@override
String toString() {
  return 'PostNotificationRequest(body: $body, title: $title, destination: $destination)';
}


}

/// @nodoc
abstract mixin class _$PostNotificationRequestCopyWith<$Res> implements $PostNotificationRequestCopyWith<$Res> {
  factory _$PostNotificationRequestCopyWith(_PostNotificationRequest value, $Res Function(_PostNotificationRequest) _then) = __$PostNotificationRequestCopyWithImpl;
@override @useResult
$Res call({
 String body, String title, String destination
});




}
/// @nodoc
class __$PostNotificationRequestCopyWithImpl<$Res>
    implements _$PostNotificationRequestCopyWith<$Res> {
  __$PostNotificationRequestCopyWithImpl(this._self, this._then);

  final _PostNotificationRequest _self;
  final $Res Function(_PostNotificationRequest) _then;

/// Create a copy of PostNotificationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,Object? title = null,Object? destination = null,}) {
  return _then(_PostNotificationRequest(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
