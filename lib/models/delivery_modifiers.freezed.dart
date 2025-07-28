// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_modifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryModifiers {

 double get distancePrice; double get distanceUnit; double get weightPrice; double get weightUnit;
/// Create a copy of DeliveryModifiers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryModifiersCopyWith<DeliveryModifiers> get copyWith => _$DeliveryModifiersCopyWithImpl<DeliveryModifiers>(this as DeliveryModifiers, _$identity);

  /// Serializes this DeliveryModifiers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryModifiers&&(identical(other.distancePrice, distancePrice) || other.distancePrice == distancePrice)&&(identical(other.distanceUnit, distanceUnit) || other.distanceUnit == distanceUnit)&&(identical(other.weightPrice, weightPrice) || other.weightPrice == weightPrice)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distancePrice,distanceUnit,weightPrice,weightUnit);

@override
String toString() {
  return 'DeliveryModifiers(distancePrice: $distancePrice, distanceUnit: $distanceUnit, weightPrice: $weightPrice, weightUnit: $weightUnit)';
}


}

/// @nodoc
abstract mixin class $DeliveryModifiersCopyWith<$Res>  {
  factory $DeliveryModifiersCopyWith(DeliveryModifiers value, $Res Function(DeliveryModifiers) _then) = _$DeliveryModifiersCopyWithImpl;
@useResult
$Res call({
 double distancePrice, double distanceUnit, double weightPrice, double weightUnit
});




}
/// @nodoc
class _$DeliveryModifiersCopyWithImpl<$Res>
    implements $DeliveryModifiersCopyWith<$Res> {
  _$DeliveryModifiersCopyWithImpl(this._self, this._then);

  final DeliveryModifiers _self;
  final $Res Function(DeliveryModifiers) _then;

/// Create a copy of DeliveryModifiers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distancePrice = null,Object? distanceUnit = null,Object? weightPrice = null,Object? weightUnit = null,}) {
  return _then(_self.copyWith(
distancePrice: null == distancePrice ? _self.distancePrice : distancePrice // ignore: cast_nullable_to_non_nullable
as double,distanceUnit: null == distanceUnit ? _self.distanceUnit : distanceUnit // ignore: cast_nullable_to_non_nullable
as double,weightPrice: null == weightPrice ? _self.weightPrice : weightPrice // ignore: cast_nullable_to_non_nullable
as double,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryModifiers].
extension DeliveryModifiersPatterns on DeliveryModifiers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryModifiers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryModifiers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryModifiers value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryModifiers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryModifiers value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryModifiers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double distancePrice,  double distanceUnit,  double weightPrice,  double weightUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryModifiers() when $default != null:
return $default(_that.distancePrice,_that.distanceUnit,_that.weightPrice,_that.weightUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double distancePrice,  double distanceUnit,  double weightPrice,  double weightUnit)  $default,) {final _that = this;
switch (_that) {
case _DeliveryModifiers():
return $default(_that.distancePrice,_that.distanceUnit,_that.weightPrice,_that.weightUnit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double distancePrice,  double distanceUnit,  double weightPrice,  double weightUnit)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryModifiers() when $default != null:
return $default(_that.distancePrice,_that.distanceUnit,_that.weightPrice,_that.weightUnit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DeliveryModifiers implements DeliveryModifiers {
  const _DeliveryModifiers({this.distancePrice = 0, this.distanceUnit = 0, this.weightPrice = 0, this.weightUnit = 0});
  factory _DeliveryModifiers.fromJson(Map<String, dynamic> json) => _$DeliveryModifiersFromJson(json);

@override@JsonKey() final  double distancePrice;
@override@JsonKey() final  double distanceUnit;
@override@JsonKey() final  double weightPrice;
@override@JsonKey() final  double weightUnit;

/// Create a copy of DeliveryModifiers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryModifiersCopyWith<_DeliveryModifiers> get copyWith => __$DeliveryModifiersCopyWithImpl<_DeliveryModifiers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryModifiersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryModifiers&&(identical(other.distancePrice, distancePrice) || other.distancePrice == distancePrice)&&(identical(other.distanceUnit, distanceUnit) || other.distanceUnit == distanceUnit)&&(identical(other.weightPrice, weightPrice) || other.weightPrice == weightPrice)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distancePrice,distanceUnit,weightPrice,weightUnit);

@override
String toString() {
  return 'DeliveryModifiers(distancePrice: $distancePrice, distanceUnit: $distanceUnit, weightPrice: $weightPrice, weightUnit: $weightUnit)';
}


}

/// @nodoc
abstract mixin class _$DeliveryModifiersCopyWith<$Res> implements $DeliveryModifiersCopyWith<$Res> {
  factory _$DeliveryModifiersCopyWith(_DeliveryModifiers value, $Res Function(_DeliveryModifiers) _then) = __$DeliveryModifiersCopyWithImpl;
@override @useResult
$Res call({
 double distancePrice, double distanceUnit, double weightPrice, double weightUnit
});




}
/// @nodoc
class __$DeliveryModifiersCopyWithImpl<$Res>
    implements _$DeliveryModifiersCopyWith<$Res> {
  __$DeliveryModifiersCopyWithImpl(this._self, this._then);

  final _DeliveryModifiers _self;
  final $Res Function(_DeliveryModifiers) _then;

/// Create a copy of DeliveryModifiers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distancePrice = null,Object? distanceUnit = null,Object? weightPrice = null,Object? weightUnit = null,}) {
  return _then(_DeliveryModifiers(
distancePrice: null == distancePrice ? _self.distancePrice : distancePrice // ignore: cast_nullable_to_non_nullable
as double,distanceUnit: null == distanceUnit ? _self.distanceUnit : distanceUnit // ignore: cast_nullable_to_non_nullable
as double,weightPrice: null == weightPrice ? _self.weightPrice : weightPrice // ignore: cast_nullable_to_non_nullable
as double,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
