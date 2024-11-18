// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryTime _$DeliveryTimeFromJson(Map<String, dynamic> json) {
  return _DeliveryTime.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTime {
  String get id => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  DeliveryTimeName get name => throw _privateConstructorUsedError;
  @StringHourToDateTimeConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @StringHourToDateTimeConverter()
  DateTime get end => throw _privateConstructorUsedError;

  /// Serializes this DeliveryTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryTimeCopyWith<DeliveryTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTimeCopyWith<$Res> {
  factory $DeliveryTimeCopyWith(
          DeliveryTime value, $Res Function(DeliveryTime) then) =
      _$DeliveryTimeCopyWithImpl<$Res, DeliveryTime>;
  @useResult
  $Res call(
      {String id,
      bool available,
      double discount,
      DeliveryTimeName name,
      @StringHourToDateTimeConverter() DateTime start,
      @StringHourToDateTimeConverter() DateTime end});
}

/// @nodoc
class _$DeliveryTimeCopyWithImpl<$Res, $Val extends DeliveryTime>
    implements $DeliveryTimeCopyWith<$Res> {
  _$DeliveryTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? available = null,
    Object? discount = null,
    Object? name = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DeliveryTimeName,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTimeImplCopyWith<$Res>
    implements $DeliveryTimeCopyWith<$Res> {
  factory _$$DeliveryTimeImplCopyWith(
          _$DeliveryTimeImpl value, $Res Function(_$DeliveryTimeImpl) then) =
      __$$DeliveryTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool available,
      double discount,
      DeliveryTimeName name,
      @StringHourToDateTimeConverter() DateTime start,
      @StringHourToDateTimeConverter() DateTime end});
}

/// @nodoc
class __$$DeliveryTimeImplCopyWithImpl<$Res>
    extends _$DeliveryTimeCopyWithImpl<$Res, _$DeliveryTimeImpl>
    implements _$$DeliveryTimeImplCopyWith<$Res> {
  __$$DeliveryTimeImplCopyWithImpl(
      _$DeliveryTimeImpl _value, $Res Function(_$DeliveryTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? available = null,
    Object? discount = null,
    Object? name = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$DeliveryTimeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DeliveryTimeName,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DeliveryTimeImpl implements _DeliveryTime {
  const _$DeliveryTimeImpl(
      {required this.id,
      required this.available,
      required this.discount,
      required this.name,
      @StringHourToDateTimeConverter() required this.start,
      @StringHourToDateTimeConverter() required this.end});

  factory _$DeliveryTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTimeImplFromJson(json);

  @override
  final String id;
  @override
  final bool available;
  @override
  final double discount;
  @override
  final DeliveryTimeName name;
  @override
  @StringHourToDateTimeConverter()
  final DateTime start;
  @override
  @StringHourToDateTimeConverter()
  final DateTime end;

  @override
  String toString() {
    return 'DeliveryTime(id: $id, available: $available, discount: $discount, name: $name, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTimeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, available, discount, name, start, end);

  /// Create a copy of DeliveryTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTimeImplCopyWith<_$DeliveryTimeImpl> get copyWith =>
      __$$DeliveryTimeImplCopyWithImpl<_$DeliveryTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTimeImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTime implements DeliveryTime {
  const factory _DeliveryTime(
          {required final String id,
          required final bool available,
          required final double discount,
          required final DeliveryTimeName name,
          @StringHourToDateTimeConverter() required final DateTime start,
          @StringHourToDateTimeConverter() required final DateTime end}) =
      _$DeliveryTimeImpl;

  factory _DeliveryTime.fromJson(Map<String, dynamic> json) =
      _$DeliveryTimeImpl.fromJson;

  @override
  String get id;
  @override
  bool get available;
  @override
  double get discount;
  @override
  DeliveryTimeName get name;
  @override
  @StringHourToDateTimeConverter()
  DateTime get start;
  @override
  @StringHourToDateTimeConverter()
  DateTime get end;

  /// Create a copy of DeliveryTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryTimeImplCopyWith<_$DeliveryTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
