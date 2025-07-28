// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Voucher {

 String get id; String get code; double get discount;
/// Create a copy of Voucher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherCopyWith<Voucher> get copyWith => _$VoucherCopyWithImpl<Voucher>(this as Voucher, _$identity);

  /// Serializes this Voucher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Voucher&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discount);

@override
String toString() {
  return 'Voucher(id: $id, code: $code, discount: $discount)';
}


}

/// @nodoc
abstract mixin class $VoucherCopyWith<$Res>  {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) _then) = _$VoucherCopyWithImpl;
@useResult
$Res call({
 String id, String code, double discount
});




}
/// @nodoc
class _$VoucherCopyWithImpl<$Res>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._self, this._then);

  final Voucher _self;
  final $Res Function(Voucher) _then;

/// Create a copy of Voucher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? discount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Voucher].
extension VoucherPatterns on Voucher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Voucher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Voucher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Voucher value)  $default,){
final _that = this;
switch (_that) {
case _Voucher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Voucher value)?  $default,){
final _that = this;
switch (_that) {
case _Voucher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code,  double discount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Voucher() when $default != null:
return $default(_that.id,_that.code,_that.discount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code,  double discount)  $default,) {final _that = this;
switch (_that) {
case _Voucher():
return $default(_that.id,_that.code,_that.discount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code,  double discount)?  $default,) {final _that = this;
switch (_that) {
case _Voucher() when $default != null:
return $default(_that.id,_that.code,_that.discount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Voucher implements Voucher {
  const _Voucher({required this.id, required this.code, required this.discount});
  factory _Voucher.fromJson(Map<String, dynamic> json) => _$VoucherFromJson(json);

@override final  String id;
@override final  String code;
@override final  double discount;

/// Create a copy of Voucher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherCopyWith<_Voucher> get copyWith => __$VoucherCopyWithImpl<_Voucher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoucherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Voucher&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discount);

@override
String toString() {
  return 'Voucher(id: $id, code: $code, discount: $discount)';
}


}

/// @nodoc
abstract mixin class _$VoucherCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$VoucherCopyWith(_Voucher value, $Res Function(_Voucher) _then) = __$VoucherCopyWithImpl;
@override @useResult
$Res call({
 String id, String code, double discount
});




}
/// @nodoc
class __$VoucherCopyWithImpl<$Res>
    implements _$VoucherCopyWith<$Res> {
  __$VoucherCopyWithImpl(this._self, this._then);

  final _Voucher _self;
  final $Res Function(_Voucher) _then;

/// Create a copy of Voucher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? discount = null,}) {
  return _then(_Voucher(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
