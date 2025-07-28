// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserApp {

 String? get deviceInfo; String? get fcmToken; String get documentId;@TimestampToDateTimeConverter() DateTime? get lastActiveTimeStamp; String get name; String? get partnerId; String get phone; String get uid;
/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAppCopyWith<UserApp> get copyWith => _$UserAppCopyWithImpl<UserApp>(this as UserApp, _$identity);

  /// Serializes this UserApp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserApp&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.lastActiveTimeStamp, lastActiveTimeStamp) || other.lastActiveTimeStamp == lastActiveTimeStamp)&&(identical(other.name, name) || other.name == name)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceInfo,fcmToken,documentId,lastActiveTimeStamp,name,partnerId,phone,uid);

@override
String toString() {
  return 'UserApp(deviceInfo: $deviceInfo, fcmToken: $fcmToken, documentId: $documentId, lastActiveTimeStamp: $lastActiveTimeStamp, name: $name, partnerId: $partnerId, phone: $phone, uid: $uid)';
}


}

/// @nodoc
abstract mixin class $UserAppCopyWith<$Res>  {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) _then) = _$UserAppCopyWithImpl;
@useResult
$Res call({
 String? deviceInfo, String? fcmToken, String documentId,@TimestampToDateTimeConverter() DateTime? lastActiveTimeStamp, String name, String? partnerId, String phone, String uid
});




}
/// @nodoc
class _$UserAppCopyWithImpl<$Res>
    implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._self, this._then);

  final UserApp _self;
  final $Res Function(UserApp) _then;

/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceInfo = freezed,Object? fcmToken = freezed,Object? documentId = null,Object? lastActiveTimeStamp = freezed,Object? name = null,Object? partnerId = freezed,Object? phone = null,Object? uid = null,}) {
  return _then(_self.copyWith(
deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,lastActiveTimeStamp: freezed == lastActiveTimeStamp ? _self.lastActiveTimeStamp : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserApp].
extension UserAppPatterns on UserApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserApp value)  $default,){
final _that = this;
switch (_that) {
case _UserApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserApp value)?  $default,){
final _that = this;
switch (_that) {
case _UserApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? deviceInfo,  String? fcmToken,  String documentId, @TimestampToDateTimeConverter()  DateTime? lastActiveTimeStamp,  String name,  String? partnerId,  String phone,  String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserApp() when $default != null:
return $default(_that.deviceInfo,_that.fcmToken,_that.documentId,_that.lastActiveTimeStamp,_that.name,_that.partnerId,_that.phone,_that.uid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? deviceInfo,  String? fcmToken,  String documentId, @TimestampToDateTimeConverter()  DateTime? lastActiveTimeStamp,  String name,  String? partnerId,  String phone,  String uid)  $default,) {final _that = this;
switch (_that) {
case _UserApp():
return $default(_that.deviceInfo,_that.fcmToken,_that.documentId,_that.lastActiveTimeStamp,_that.name,_that.partnerId,_that.phone,_that.uid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? deviceInfo,  String? fcmToken,  String documentId, @TimestampToDateTimeConverter()  DateTime? lastActiveTimeStamp,  String name,  String? partnerId,  String phone,  String uid)?  $default,) {final _that = this;
switch (_that) {
case _UserApp() when $default != null:
return $default(_that.deviceInfo,_that.fcmToken,_that.documentId,_that.lastActiveTimeStamp,_that.name,_that.partnerId,_that.phone,_that.uid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _UserApp implements UserApp {
  const _UserApp({this.deviceInfo, this.fcmToken, required this.documentId, @TimestampToDateTimeConverter() this.lastActiveTimeStamp, required this.name, this.partnerId, required this.phone, required this.uid});
  factory _UserApp.fromJson(Map<String, dynamic> json) => _$UserAppFromJson(json);

@override final  String? deviceInfo;
@override final  String? fcmToken;
@override final  String documentId;
@override@TimestampToDateTimeConverter() final  DateTime? lastActiveTimeStamp;
@override final  String name;
@override final  String? partnerId;
@override final  String phone;
@override final  String uid;

/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAppCopyWith<_UserApp> get copyWith => __$UserAppCopyWithImpl<_UserApp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserApp&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.lastActiveTimeStamp, lastActiveTimeStamp) || other.lastActiveTimeStamp == lastActiveTimeStamp)&&(identical(other.name, name) || other.name == name)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceInfo,fcmToken,documentId,lastActiveTimeStamp,name,partnerId,phone,uid);

@override
String toString() {
  return 'UserApp(deviceInfo: $deviceInfo, fcmToken: $fcmToken, documentId: $documentId, lastActiveTimeStamp: $lastActiveTimeStamp, name: $name, partnerId: $partnerId, phone: $phone, uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$UserAppCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$UserAppCopyWith(_UserApp value, $Res Function(_UserApp) _then) = __$UserAppCopyWithImpl;
@override @useResult
$Res call({
 String? deviceInfo, String? fcmToken, String documentId,@TimestampToDateTimeConverter() DateTime? lastActiveTimeStamp, String name, String? partnerId, String phone, String uid
});




}
/// @nodoc
class __$UserAppCopyWithImpl<$Res>
    implements _$UserAppCopyWith<$Res> {
  __$UserAppCopyWithImpl(this._self, this._then);

  final _UserApp _self;
  final $Res Function(_UserApp) _then;

/// Create a copy of UserApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceInfo = freezed,Object? fcmToken = freezed,Object? documentId = null,Object? lastActiveTimeStamp = freezed,Object? name = null,Object? partnerId = freezed,Object? phone = null,Object? uid = null,}) {
  return _then(_UserApp(
deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,lastActiveTimeStamp: freezed == lastActiveTimeStamp ? _self.lastActiveTimeStamp : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
