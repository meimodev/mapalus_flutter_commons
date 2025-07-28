// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryTime {

 String get id; bool get available; double get discount; DeliveryTimeName get name;@StringHourToDateTimeConverter() DateTime get start;@StringHourToDateTimeConverter() DateTime get end;
/// Create a copy of DeliveryTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryTimeCopyWith<DeliveryTime> get copyWith => _$DeliveryTimeCopyWithImpl<DeliveryTime>(this as DeliveryTime, _$identity);

  /// Serializes this DeliveryTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryTime&&(identical(other.id, id) || other.id == id)&&(identical(other.available, available) || other.available == available)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,available,discount,name,start,end);

@override
String toString() {
  return 'DeliveryTime(id: $id, available: $available, discount: $discount, name: $name, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $DeliveryTimeCopyWith<$Res>  {
  factory $DeliveryTimeCopyWith(DeliveryTime value, $Res Function(DeliveryTime) _then) = _$DeliveryTimeCopyWithImpl;
@useResult
$Res call({
 String id, bool available, double discount, DeliveryTimeName name,@StringHourToDateTimeConverter() DateTime start,@StringHourToDateTimeConverter() DateTime end
});




}
/// @nodoc
class _$DeliveryTimeCopyWithImpl<$Res>
    implements $DeliveryTimeCopyWith<$Res> {
  _$DeliveryTimeCopyWithImpl(this._self, this._then);

  final DeliveryTime _self;
  final $Res Function(DeliveryTime) _then;

/// Create a copy of DeliveryTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? available = null,Object? discount = null,Object? name = null,Object? start = null,Object? end = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as DeliveryTimeName,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryTime].
extension DeliveryTimePatterns on DeliveryTime {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryTime() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryTime value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryTime():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryTime value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryTime() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool available,  double discount,  DeliveryTimeName name, @StringHourToDateTimeConverter()  DateTime start, @StringHourToDateTimeConverter()  DateTime end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryTime() when $default != null:
return $default(_that.id,_that.available,_that.discount,_that.name,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool available,  double discount,  DeliveryTimeName name, @StringHourToDateTimeConverter()  DateTime start, @StringHourToDateTimeConverter()  DateTime end)  $default,) {final _that = this;
switch (_that) {
case _DeliveryTime():
return $default(_that.id,_that.available,_that.discount,_that.name,_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool available,  double discount,  DeliveryTimeName name, @StringHourToDateTimeConverter()  DateTime start, @StringHourToDateTimeConverter()  DateTime end)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryTime() when $default != null:
return $default(_that.id,_that.available,_that.discount,_that.name,_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DeliveryTime implements DeliveryTime {
  const _DeliveryTime({required this.id, required this.available, required this.discount, required this.name, @StringHourToDateTimeConverter() required this.start, @StringHourToDateTimeConverter() required this.end});
  factory _DeliveryTime.fromJson(Map<String, dynamic> json) => _$DeliveryTimeFromJson(json);

@override final  String id;
@override final  bool available;
@override final  double discount;
@override final  DeliveryTimeName name;
@override@StringHourToDateTimeConverter() final  DateTime start;
@override@StringHourToDateTimeConverter() final  DateTime end;

/// Create a copy of DeliveryTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryTimeCopyWith<_DeliveryTime> get copyWith => __$DeliveryTimeCopyWithImpl<_DeliveryTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryTime&&(identical(other.id, id) || other.id == id)&&(identical(other.available, available) || other.available == available)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,available,discount,name,start,end);

@override
String toString() {
  return 'DeliveryTime(id: $id, available: $available, discount: $discount, name: $name, start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$DeliveryTimeCopyWith<$Res> implements $DeliveryTimeCopyWith<$Res> {
  factory _$DeliveryTimeCopyWith(_DeliveryTime value, $Res Function(_DeliveryTime) _then) = __$DeliveryTimeCopyWithImpl;
@override @useResult
$Res call({
 String id, bool available, double discount, DeliveryTimeName name,@StringHourToDateTimeConverter() DateTime start,@StringHourToDateTimeConverter() DateTime end
});




}
/// @nodoc
class __$DeliveryTimeCopyWithImpl<$Res>
    implements _$DeliveryTimeCopyWith<$Res> {
  __$DeliveryTimeCopyWithImpl(this._self, this._then);

  final _DeliveryTime _self;
  final $Res Function(_DeliveryTime) _then;

/// Create a copy of DeliveryTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? available = null,Object? discount = null,Object? name = null,Object? start = null,Object? end = null,}) {
  return _then(_DeliveryTime(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as DeliveryTimeName,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
