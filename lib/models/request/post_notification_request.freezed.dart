// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostNotificationRequest {
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Can be String topic or fcmToken
  String get destination => throw _privateConstructorUsedError;

  /// Create a copy of PostNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostNotificationRequestCopyWith<PostNotificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostNotificationRequestCopyWith<$Res> {
  factory $PostNotificationRequestCopyWith(PostNotificationRequest value,
          $Res Function(PostNotificationRequest) then) =
      _$PostNotificationRequestCopyWithImpl<$Res, PostNotificationRequest>;
  @useResult
  $Res call({String body, String title, String destination});
}

/// @nodoc
class _$PostNotificationRequestCopyWithImpl<$Res,
        $Val extends PostNotificationRequest>
    implements $PostNotificationRequestCopyWith<$Res> {
  _$PostNotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostNotificationRequestImplCopyWith<$Res>
    implements $PostNotificationRequestCopyWith<$Res> {
  factory _$$PostNotificationRequestImplCopyWith(
          _$PostNotificationRequestImpl value,
          $Res Function(_$PostNotificationRequestImpl) then) =
      __$$PostNotificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body, String title, String destination});
}

/// @nodoc
class __$$PostNotificationRequestImplCopyWithImpl<$Res>
    extends _$PostNotificationRequestCopyWithImpl<$Res,
        _$PostNotificationRequestImpl>
    implements _$$PostNotificationRequestImplCopyWith<$Res> {
  __$$PostNotificationRequestImplCopyWithImpl(
      _$PostNotificationRequestImpl _value,
      $Res Function(_$PostNotificationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? title = null,
    Object? destination = null,
  }) {
    return _then(_$PostNotificationRequestImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostNotificationRequestImpl implements _PostNotificationRequest {
  const _$PostNotificationRequestImpl(
      {required this.body, required this.title, required this.destination});

  @override
  final String body;
  @override
  final String title;

  /// Can be String topic or fcmToken
  @override
  final String destination;

  @override
  String toString() {
    return 'PostNotificationRequest(body: $body, title: $title, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostNotificationRequestImpl &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body, title, destination);

  /// Create a copy of PostNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostNotificationRequestImplCopyWith<_$PostNotificationRequestImpl>
      get copyWith => __$$PostNotificationRequestImplCopyWithImpl<
          _$PostNotificationRequestImpl>(this, _$identity);
}

abstract class _PostNotificationRequest implements PostNotificationRequest {
  const factory _PostNotificationRequest(
      {required final String body,
      required final String title,
      required final String destination}) = _$PostNotificationRequestImpl;

  @override
  String get body;
  @override
  String get title;

  /// Can be String topic or fcmToken
  @override
  String get destination;

  /// Create a copy of PostNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostNotificationRequestImplCopyWith<_$PostNotificationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
