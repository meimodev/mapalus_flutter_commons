// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String get category; bool get customPrice; String get description; String get id; String get image; double get minimumPrice; String get name; String get partnerId; double get price; ProductStatus? get status; ProductType? get type; ProductUnit? get unit; double get weight;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.category, category) || other.category == category)&&(identical(other.customPrice, customPrice) || other.customPrice == customPrice)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.minimumPrice, minimumPrice) || other.minimumPrice == minimumPrice)&&(identical(other.name, name) || other.name == name)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,customPrice,description,id,image,minimumPrice,name,partnerId,price,status,type,unit,weight);

@override
String toString() {
  return 'Product(category: $category, customPrice: $customPrice, description: $description, id: $id, image: $image, minimumPrice: $minimumPrice, name: $name, partnerId: $partnerId, price: $price, status: $status, type: $type, unit: $unit, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String category, bool customPrice, String description, String id, String image, double minimumPrice, String name, String partnerId, double price, ProductStatus? status, ProductType? type, ProductUnit? unit, double weight
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? customPrice = null,Object? description = null,Object? id = null,Object? image = null,Object? minimumPrice = null,Object? name = null,Object? partnerId = null,Object? price = null,Object? status = freezed,Object? type = freezed,Object? unit = freezed,Object? weight = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,customPrice: null == customPrice ? _self.customPrice : customPrice // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,minimumPrice: null == minimumPrice ? _self.minimumPrice : minimumPrice // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as ProductUnit?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  bool customPrice,  String description,  String id,  String image,  double minimumPrice,  String name,  String partnerId,  double price,  ProductStatus? status,  ProductType? type,  ProductUnit? unit,  double weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.category,_that.customPrice,_that.description,_that.id,_that.image,_that.minimumPrice,_that.name,_that.partnerId,_that.price,_that.status,_that.type,_that.unit,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  bool customPrice,  String description,  String id,  String image,  double minimumPrice,  String name,  String partnerId,  double price,  ProductStatus? status,  ProductType? type,  ProductUnit? unit,  double weight)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.category,_that.customPrice,_that.description,_that.id,_that.image,_that.minimumPrice,_that.name,_that.partnerId,_that.price,_that.status,_that.type,_that.unit,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  bool customPrice,  String description,  String id,  String image,  double minimumPrice,  String name,  String partnerId,  double price,  ProductStatus? status,  ProductType? type,  ProductUnit? unit,  double weight)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.category,_that.customPrice,_that.description,_that.id,_that.image,_that.minimumPrice,_that.name,_that.partnerId,_that.price,_that.status,_that.type,_that.unit,_that.weight);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Product implements Product {
  const _Product({this.category = "", this.customPrice = false, this.description = "", this.id = "", this.image = "", this.minimumPrice = 0, this.name = "", this.partnerId = "", this.price = 0, this.status, this.type, this.unit, this.weight = 0});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey() final  String category;
@override@JsonKey() final  bool customPrice;
@override@JsonKey() final  String description;
@override@JsonKey() final  String id;
@override@JsonKey() final  String image;
@override@JsonKey() final  double minimumPrice;
@override@JsonKey() final  String name;
@override@JsonKey() final  String partnerId;
@override@JsonKey() final  double price;
@override final  ProductStatus? status;
@override final  ProductType? type;
@override final  ProductUnit? unit;
@override@JsonKey() final  double weight;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.category, category) || other.category == category)&&(identical(other.customPrice, customPrice) || other.customPrice == customPrice)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.minimumPrice, minimumPrice) || other.minimumPrice == minimumPrice)&&(identical(other.name, name) || other.name == name)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,customPrice,description,id,image,minimumPrice,name,partnerId,price,status,type,unit,weight);

@override
String toString() {
  return 'Product(category: $category, customPrice: $customPrice, description: $description, id: $id, image: $image, minimumPrice: $minimumPrice, name: $name, partnerId: $partnerId, price: $price, status: $status, type: $type, unit: $unit, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String category, bool customPrice, String description, String id, String image, double minimumPrice, String name, String partnerId, double price, ProductStatus? status, ProductType? type, ProductUnit? unit, double weight
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? customPrice = null,Object? description = null,Object? id = null,Object? image = null,Object? minimumPrice = null,Object? name = null,Object? partnerId = null,Object? price = null,Object? status = freezed,Object? type = freezed,Object? unit = freezed,Object? weight = null,}) {
  return _then(_Product(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,customPrice: null == customPrice ? _self.customPrice : customPrice // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,minimumPrice: null == minimumPrice ? _self.minimumPrice : minimumPrice // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductStatus?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductType?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as ProductUnit?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
