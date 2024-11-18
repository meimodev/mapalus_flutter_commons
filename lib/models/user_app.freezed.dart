// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserApp _$UserAppFromJson(Map<String, dynamic> json) {
  return _UserApp.fromJson(json);
}

/// @nodoc
mixin _$UserApp {
  String? get deviceInfo => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  @TimestampToDateTimeConverter()
  DateTime? get lastActiveTimeStamp => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get partnerId => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  /// Serializes this UserApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAppCopyWith<UserApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAppCopyWith<$Res> {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) then) =
      _$UserAppCopyWithImpl<$Res, UserApp>;
  @useResult
  $Res call(
      {String? deviceInfo,
      String? fcmToken,
      String documentId,
      @TimestampToDateTimeConverter() DateTime? lastActiveTimeStamp,
      String name,
      String? partnerId,
      String phone,
      String uid});
}

/// @nodoc
class _$UserAppCopyWithImpl<$Res, $Val extends UserApp>
    implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = freezed,
    Object? fcmToken = freezed,
    Object? documentId = null,
    Object? lastActiveTimeStamp = freezed,
    Object? name = null,
    Object? partnerId = freezed,
    Object? phone = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveTimeStamp: freezed == lastActiveTimeStamp
          ? _value.lastActiveTimeStamp
          : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAppImplCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$$UserAppImplCopyWith(
          _$UserAppImpl value, $Res Function(_$UserAppImpl) then) =
      __$$UserAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? deviceInfo,
      String? fcmToken,
      String documentId,
      @TimestampToDateTimeConverter() DateTime? lastActiveTimeStamp,
      String name,
      String? partnerId,
      String phone,
      String uid});
}

/// @nodoc
class __$$UserAppImplCopyWithImpl<$Res>
    extends _$UserAppCopyWithImpl<$Res, _$UserAppImpl>
    implements _$$UserAppImplCopyWith<$Res> {
  __$$UserAppImplCopyWithImpl(
      _$UserAppImpl _value, $Res Function(_$UserAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = freezed,
    Object? fcmToken = freezed,
    Object? documentId = null,
    Object? lastActiveTimeStamp = freezed,
    Object? name = null,
    Object? partnerId = freezed,
    Object? phone = null,
    Object? uid = null,
  }) {
    return _then(_$UserAppImpl(
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveTimeStamp: freezed == lastActiveTimeStamp
          ? _value.lastActiveTimeStamp
          : lastActiveTimeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UserAppImpl implements _UserApp {
  const _$UserAppImpl(
      {this.deviceInfo,
      this.fcmToken,
      required this.documentId,
      @TimestampToDateTimeConverter() this.lastActiveTimeStamp,
      required this.name,
      this.partnerId,
      required this.phone,
      required this.uid});

  factory _$UserAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAppImplFromJson(json);

  @override
  final String? deviceInfo;
  @override
  final String? fcmToken;
  @override
  final String documentId;
  @override
  @TimestampToDateTimeConverter()
  final DateTime? lastActiveTimeStamp;
  @override
  final String name;
  @override
  final String? partnerId;
  @override
  final String phone;
  @override
  final String uid;

  @override
  String toString() {
    return 'UserApp(deviceInfo: $deviceInfo, fcmToken: $fcmToken, documentId: $documentId, lastActiveTimeStamp: $lastActiveTimeStamp, name: $name, partnerId: $partnerId, phone: $phone, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAppImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.lastActiveTimeStamp, lastActiveTimeStamp) ||
                other.lastActiveTimeStamp == lastActiveTimeStamp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo, fcmToken, documentId,
      lastActiveTimeStamp, name, partnerId, phone, uid);

  /// Create a copy of UserApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAppImplCopyWith<_$UserAppImpl> get copyWith =>
      __$$UserAppImplCopyWithImpl<_$UserAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAppImplToJson(
      this,
    );
  }
}

abstract class _UserApp implements UserApp {
  const factory _UserApp(
      {final String? deviceInfo,
      final String? fcmToken,
      required final String documentId,
      @TimestampToDateTimeConverter() final DateTime? lastActiveTimeStamp,
      required final String name,
      final String? partnerId,
      required final String phone,
      required final String uid}) = _$UserAppImpl;

  factory _UserApp.fromJson(Map<String, dynamic> json) = _$UserAppImpl.fromJson;

  @override
  String? get deviceInfo;
  @override
  String? get fcmToken;
  @override
  String get documentId;
  @override
  @TimestampToDateTimeConverter()
  DateTime? get lastActiveTimeStamp;
  @override
  String get name;
  @override
  String? get partnerId;
  @override
  String get phone;
  @override
  String get uid;

  /// Create a copy of UserApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAppImplCopyWith<_$UserAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
