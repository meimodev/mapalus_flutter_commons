// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppKeys {

 String get fcmProjectId; String get fcmServerKey; String get serverKey;
/// Create a copy of AppKeys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppKeysCopyWith<AppKeys> get copyWith => _$AppKeysCopyWithImpl<AppKeys>(this as AppKeys, _$identity);

  /// Serializes this AppKeys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppKeys&&(identical(other.fcmProjectId, fcmProjectId) || other.fcmProjectId == fcmProjectId)&&(identical(other.fcmServerKey, fcmServerKey) || other.fcmServerKey == fcmServerKey)&&(identical(other.serverKey, serverKey) || other.serverKey == serverKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fcmProjectId,fcmServerKey,serverKey);

@override
String toString() {
  return 'AppKeys(fcmProjectId: $fcmProjectId, fcmServerKey: $fcmServerKey, serverKey: $serverKey)';
}


}

/// @nodoc
abstract mixin class $AppKeysCopyWith<$Res>  {
  factory $AppKeysCopyWith(AppKeys value, $Res Function(AppKeys) _then) = _$AppKeysCopyWithImpl;
@useResult
$Res call({
 String fcmProjectId, String fcmServerKey, String serverKey
});




}
/// @nodoc
class _$AppKeysCopyWithImpl<$Res>
    implements $AppKeysCopyWith<$Res> {
  _$AppKeysCopyWithImpl(this._self, this._then);

  final AppKeys _self;
  final $Res Function(AppKeys) _then;

/// Create a copy of AppKeys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fcmProjectId = null,Object? fcmServerKey = null,Object? serverKey = null,}) {
  return _then(_self.copyWith(
fcmProjectId: null == fcmProjectId ? _self.fcmProjectId : fcmProjectId // ignore: cast_nullable_to_non_nullable
as String,fcmServerKey: null == fcmServerKey ? _self.fcmServerKey : fcmServerKey // ignore: cast_nullable_to_non_nullable
as String,serverKey: null == serverKey ? _self.serverKey : serverKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppKeys].
extension AppKeysPatterns on AppKeys {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppKeys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppKeys() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppKeys value)  $default,){
final _that = this;
switch (_that) {
case _AppKeys():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppKeys value)?  $default,){
final _that = this;
switch (_that) {
case _AppKeys() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fcmProjectId,  String fcmServerKey,  String serverKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppKeys() when $default != null:
return $default(_that.fcmProjectId,_that.fcmServerKey,_that.serverKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fcmProjectId,  String fcmServerKey,  String serverKey)  $default,) {final _that = this;
switch (_that) {
case _AppKeys():
return $default(_that.fcmProjectId,_that.fcmServerKey,_that.serverKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fcmProjectId,  String fcmServerKey,  String serverKey)?  $default,) {final _that = this;
switch (_that) {
case _AppKeys() when $default != null:
return $default(_that.fcmProjectId,_that.fcmServerKey,_that.serverKey);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AppKeys implements AppKeys {
  const _AppKeys({required this.fcmProjectId, required this.fcmServerKey, required this.serverKey});
  factory _AppKeys.fromJson(Map<String, dynamic> json) => _$AppKeysFromJson(json);

@override final  String fcmProjectId;
@override final  String fcmServerKey;
@override final  String serverKey;

/// Create a copy of AppKeys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppKeysCopyWith<_AppKeys> get copyWith => __$AppKeysCopyWithImpl<_AppKeys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppKeysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppKeys&&(identical(other.fcmProjectId, fcmProjectId) || other.fcmProjectId == fcmProjectId)&&(identical(other.fcmServerKey, fcmServerKey) || other.fcmServerKey == fcmServerKey)&&(identical(other.serverKey, serverKey) || other.serverKey == serverKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fcmProjectId,fcmServerKey,serverKey);

@override
String toString() {
  return 'AppKeys(fcmProjectId: $fcmProjectId, fcmServerKey: $fcmServerKey, serverKey: $serverKey)';
}


}

/// @nodoc
abstract mixin class _$AppKeysCopyWith<$Res> implements $AppKeysCopyWith<$Res> {
  factory _$AppKeysCopyWith(_AppKeys value, $Res Function(_AppKeys) _then) = __$AppKeysCopyWithImpl;
@override @useResult
$Res call({
 String fcmProjectId, String fcmServerKey, String serverKey
});




}
/// @nodoc
class __$AppKeysCopyWithImpl<$Res>
    implements _$AppKeysCopyWith<$Res> {
  __$AppKeysCopyWithImpl(this._self, this._then);

  final _AppKeys _self;
  final $Res Function(_AppKeys) _then;

/// Create a copy of AppKeys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fcmProjectId = null,Object? fcmServerKey = null,Object? serverKey = null,}) {
  return _then(_AppKeys(
fcmProjectId: null == fcmProjectId ? _self.fcmProjectId : fcmProjectId // ignore: cast_nullable_to_non_nullable
as String,fcmServerKey: null == fcmServerKey ? _self.fcmServerKey : fcmServerKey // ignore: cast_nullable_to_non_nullable
as String,serverKey: null == serverKey ? _self.serverKey : serverKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
