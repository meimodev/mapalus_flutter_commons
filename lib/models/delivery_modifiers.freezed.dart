// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_modifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryModifiers _$DeliveryModifiersFromJson(Map<String, dynamic> json) {
  return _DeliveryModifiers.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModifiers {
  double get distancePrice => throw _privateConstructorUsedError;
  double get distanceUnit => throw _privateConstructorUsedError;
  double get weightPrice => throw _privateConstructorUsedError;
  double get weightUnit => throw _privateConstructorUsedError;

  /// Serializes this DeliveryModifiers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryModifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryModifiersCopyWith<DeliveryModifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModifiersCopyWith<$Res> {
  factory $DeliveryModifiersCopyWith(
          DeliveryModifiers value, $Res Function(DeliveryModifiers) then) =
      _$DeliveryModifiersCopyWithImpl<$Res, DeliveryModifiers>;
  @useResult
  $Res call(
      {double distancePrice,
      double distanceUnit,
      double weightPrice,
      double weightUnit});
}

/// @nodoc
class _$DeliveryModifiersCopyWithImpl<$Res, $Val extends DeliveryModifiers>
    implements $DeliveryModifiersCopyWith<$Res> {
  _$DeliveryModifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryModifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distancePrice = null,
    Object? distanceUnit = null,
    Object? weightPrice = null,
    Object? weightUnit = null,
  }) {
    return _then(_value.copyWith(
      distancePrice: null == distancePrice
          ? _value.distancePrice
          : distancePrice // ignore: cast_nullable_to_non_nullable
              as double,
      distanceUnit: null == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as double,
      weightPrice: null == weightPrice
          ? _value.weightPrice
          : weightPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weightUnit: null == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryModifiersImplCopyWith<$Res>
    implements $DeliveryModifiersCopyWith<$Res> {
  factory _$$DeliveryModifiersImplCopyWith(_$DeliveryModifiersImpl value,
          $Res Function(_$DeliveryModifiersImpl) then) =
      __$$DeliveryModifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double distancePrice,
      double distanceUnit,
      double weightPrice,
      double weightUnit});
}

/// @nodoc
class __$$DeliveryModifiersImplCopyWithImpl<$Res>
    extends _$DeliveryModifiersCopyWithImpl<$Res, _$DeliveryModifiersImpl>
    implements _$$DeliveryModifiersImplCopyWith<$Res> {
  __$$DeliveryModifiersImplCopyWithImpl(_$DeliveryModifiersImpl _value,
      $Res Function(_$DeliveryModifiersImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryModifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distancePrice = null,
    Object? distanceUnit = null,
    Object? weightPrice = null,
    Object? weightUnit = null,
  }) {
    return _then(_$DeliveryModifiersImpl(
      distancePrice: null == distancePrice
          ? _value.distancePrice
          : distancePrice // ignore: cast_nullable_to_non_nullable
              as double,
      distanceUnit: null == distanceUnit
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as double,
      weightPrice: null == weightPrice
          ? _value.weightPrice
          : weightPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weightUnit: null == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DeliveryModifiersImpl implements _DeliveryModifiers {
  const _$DeliveryModifiersImpl(
      {this.distancePrice = 0,
      this.distanceUnit = 0,
      this.weightPrice = 0,
      this.weightUnit = 0});

  factory _$DeliveryModifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryModifiersImplFromJson(json);

  @override
  @JsonKey()
  final double distancePrice;
  @override
  @JsonKey()
  final double distanceUnit;
  @override
  @JsonKey()
  final double weightPrice;
  @override
  @JsonKey()
  final double weightUnit;

  @override
  String toString() {
    return 'DeliveryModifiers(distancePrice: $distancePrice, distanceUnit: $distanceUnit, weightPrice: $weightPrice, weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryModifiersImpl &&
            (identical(other.distancePrice, distancePrice) ||
                other.distancePrice == distancePrice) &&
            (identical(other.distanceUnit, distanceUnit) ||
                other.distanceUnit == distanceUnit) &&
            (identical(other.weightPrice, weightPrice) ||
                other.weightPrice == weightPrice) &&
            (identical(other.weightUnit, weightUnit) ||
                other.weightUnit == weightUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, distancePrice, distanceUnit, weightPrice, weightUnit);

  /// Create a copy of DeliveryModifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryModifiersImplCopyWith<_$DeliveryModifiersImpl> get copyWith =>
      __$$DeliveryModifiersImplCopyWithImpl<_$DeliveryModifiersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryModifiersImplToJson(
      this,
    );
  }
}

abstract class _DeliveryModifiers implements DeliveryModifiers {
  const factory _DeliveryModifiers(
      {final double distancePrice,
      final double distanceUnit,
      final double weightPrice,
      final double weightUnit}) = _$DeliveryModifiersImpl;

  factory _DeliveryModifiers.fromJson(Map<String, dynamic> json) =
      _$DeliveryModifiersImpl.fromJson;

  @override
  double get distancePrice;
  @override
  double get distanceUnit;
  @override
  double get weightPrice;
  @override
  double get weightUnit;

  /// Create a copy of DeliveryModifiers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryModifiersImplCopyWith<_$DeliveryModifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
