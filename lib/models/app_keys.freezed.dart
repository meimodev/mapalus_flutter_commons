// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppKeys _$AppKeysFromJson(Map<String, dynamic> json) {
  return _AppKeys.fromJson(json);
}

/// @nodoc
mixin _$AppKeys {
  String get fcmProjectId => throw _privateConstructorUsedError;
  String get fcmServerKey => throw _privateConstructorUsedError;
  String get serverKey => throw _privateConstructorUsedError;

  /// Serializes this AppKeys to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppKeysCopyWith<AppKeys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppKeysCopyWith<$Res> {
  factory $AppKeysCopyWith(AppKeys value, $Res Function(AppKeys) then) =
      _$AppKeysCopyWithImpl<$Res, AppKeys>;
  @useResult
  $Res call({String fcmProjectId, String fcmServerKey, String serverKey});
}

/// @nodoc
class _$AppKeysCopyWithImpl<$Res, $Val extends AppKeys>
    implements $AppKeysCopyWith<$Res> {
  _$AppKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmProjectId = null,
    Object? fcmServerKey = null,
    Object? serverKey = null,
  }) {
    return _then(_value.copyWith(
      fcmProjectId: null == fcmProjectId
          ? _value.fcmProjectId
          : fcmProjectId // ignore: cast_nullable_to_non_nullable
              as String,
      fcmServerKey: null == fcmServerKey
          ? _value.fcmServerKey
          : fcmServerKey // ignore: cast_nullable_to_non_nullable
              as String,
      serverKey: null == serverKey
          ? _value.serverKey
          : serverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppKeysImplCopyWith<$Res> implements $AppKeysCopyWith<$Res> {
  factory _$$AppKeysImplCopyWith(
          _$AppKeysImpl value, $Res Function(_$AppKeysImpl) then) =
      __$$AppKeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmProjectId, String fcmServerKey, String serverKey});
}

/// @nodoc
class __$$AppKeysImplCopyWithImpl<$Res>
    extends _$AppKeysCopyWithImpl<$Res, _$AppKeysImpl>
    implements _$$AppKeysImplCopyWith<$Res> {
  __$$AppKeysImplCopyWithImpl(
      _$AppKeysImpl _value, $Res Function(_$AppKeysImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmProjectId = null,
    Object? fcmServerKey = null,
    Object? serverKey = null,
  }) {
    return _then(_$AppKeysImpl(
      fcmProjectId: null == fcmProjectId
          ? _value.fcmProjectId
          : fcmProjectId // ignore: cast_nullable_to_non_nullable
              as String,
      fcmServerKey: null == fcmServerKey
          ? _value.fcmServerKey
          : fcmServerKey // ignore: cast_nullable_to_non_nullable
              as String,
      serverKey: null == serverKey
          ? _value.serverKey
          : serverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AppKeysImpl implements _AppKeys {
  const _$AppKeysImpl(
      {required this.fcmProjectId,
      required this.fcmServerKey,
      required this.serverKey});

  factory _$AppKeysImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppKeysImplFromJson(json);

  @override
  final String fcmProjectId;
  @override
  final String fcmServerKey;
  @override
  final String serverKey;

  @override
  String toString() {
    return 'AppKeys(fcmProjectId: $fcmProjectId, fcmServerKey: $fcmServerKey, serverKey: $serverKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppKeysImpl &&
            (identical(other.fcmProjectId, fcmProjectId) ||
                other.fcmProjectId == fcmProjectId) &&
            (identical(other.fcmServerKey, fcmServerKey) ||
                other.fcmServerKey == fcmServerKey) &&
            (identical(other.serverKey, serverKey) ||
                other.serverKey == serverKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmProjectId, fcmServerKey, serverKey);

  /// Create a copy of AppKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppKeysImplCopyWith<_$AppKeysImpl> get copyWith =>
      __$$AppKeysImplCopyWithImpl<_$AppKeysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppKeysImplToJson(
      this,
    );
  }
}

abstract class _AppKeys implements AppKeys {
  const factory _AppKeys(
      {required final String fcmProjectId,
      required final String fcmServerKey,
      required final String serverKey}) = _$AppKeysImpl;

  factory _AppKeys.fromJson(Map<String, dynamic> json) = _$AppKeysImpl.fromJson;

  @override
  String get fcmProjectId;
  @override
  String get fcmServerKey;
  @override
  String get serverKey;

  /// Create a copy of AppKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppKeysImplCopyWith<_$AppKeysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
