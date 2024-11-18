// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Partner _$PartnerFromJson(Map<String, dynamic> json) {
  return _Partner.fromJson(json);
}

/// @nodoc
mixin _$Partner {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime get lastActiveTimeStamp => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

  /// Serializes this Partner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartnerCopyWith<Partner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res, Partner>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String fcmToken,
      @TimestampToDateTimeConverter() DateTime lastActiveTimeStamp,
      Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res, $Val extends Partner>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? fcmToken = null,
    Object? lastActiveTimeStamp = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveTimeStamp: null == lastActiveTimeStamp
          ? _value.lastActiveTimeStamp
          : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnerImplCopyWith<$Res> implements $PartnerCopyWith<$Res> {
  factory _$$PartnerImplCopyWith(
          _$PartnerImpl value, $Res Function(_$PartnerImpl) then) =
      __$$PartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String fcmToken,
      @TimestampToDateTimeConverter() DateTime lastActiveTimeStamp,
      Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$PartnerImplCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$PartnerImpl>
    implements _$$PartnerImplCopyWith<$Res> {
  __$$PartnerImplCopyWithImpl(
      _$PartnerImpl _value, $Res Function(_$PartnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? fcmToken = null,
    Object? lastActiveTimeStamp = null,
    Object? location = freezed,
  }) {
    return _then(_$PartnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveTimeStamp: null == lastActiveTimeStamp
          ? _value.lastActiveTimeStamp
          : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PartnerImpl implements _Partner {
  const _$PartnerImpl(
      {required this.id,
      required this.name,
      this.image = "",
      this.fcmToken = "",
      @TimestampToDateTimeConverter() required this.lastActiveTimeStamp,
      this.location});

  factory _$PartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String fcmToken;
  @override
  @TimestampToDateTimeConverter()
  final DateTime lastActiveTimeStamp;
  @override
  final Location? location;

  @override
  String toString() {
    return 'Partner(id: $id, name: $name, image: $image, fcmToken: $fcmToken, lastActiveTimeStamp: $lastActiveTimeStamp, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.lastActiveTimeStamp, lastActiveTimeStamp) ||
                other.lastActiveTimeStamp == lastActiveTimeStamp) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, fcmToken, lastActiveTimeStamp, location);

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      __$$PartnerImplCopyWithImpl<_$PartnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerImplToJson(
      this,
    );
  }
}

abstract class _Partner implements Partner {
  const factory _Partner(
      {required final String id,
      required final String name,
      final String image,
      final String fcmToken,
      @TimestampToDateTimeConverter()
      required final DateTime lastActiveTimeStamp,
      final Location? location}) = _$PartnerImpl;

  factory _Partner.fromJson(Map<String, dynamic> json) = _$PartnerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get fcmToken;
  @override
  @TimestampToDateTimeConverter()
  DateTime get lastActiveTimeStamp;
  @override
  Location? get location;

  /// Create a copy of Partner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
