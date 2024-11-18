// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostUserRequest {
// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  UserApp get user => throw _privateConstructorUsedError;

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostUserRequestCopyWith<PostUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUserRequestCopyWith<$Res> {
  factory $PostUserRequestCopyWith(
          PostUserRequest value, $Res Function(PostUserRequest) then) =
      _$PostUserRequestCopyWithImpl<$Res, PostUserRequest>;
  @useResult
  $Res call({UserApp user});

  $UserAppCopyWith<$Res> get user;
}

/// @nodoc
class _$PostUserRequestCopyWithImpl<$Res, $Val extends PostUserRequest>
    implements $PostUserRequestCopyWith<$Res> {
  _$PostUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserApp,
    ) as $Val);
  }

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAppCopyWith<$Res> get user {
    return $UserAppCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostUserRequestImplCopyWith<$Res>
    implements $PostUserRequestCopyWith<$Res> {
  factory _$$PostUserRequestImplCopyWith(_$PostUserRequestImpl value,
          $Res Function(_$PostUserRequestImpl) then) =
      __$$PostUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserApp user});

  @override
  $UserAppCopyWith<$Res> get user;
}

/// @nodoc
class __$$PostUserRequestImplCopyWithImpl<$Res>
    extends _$PostUserRequestCopyWithImpl<$Res, _$PostUserRequestImpl>
    implements _$$PostUserRequestImplCopyWith<$Res> {
  __$$PostUserRequestImplCopyWithImpl(
      _$PostUserRequestImpl _value, $Res Function(_$PostUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$PostUserRequestImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserApp,
    ));
  }
}

/// @nodoc

class _$PostUserRequestImpl implements _PostUserRequest {
  const _$PostUserRequestImpl({required this.user});

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  @override
  final UserApp user;

  @override
  String toString() {
    return 'PostUserRequest(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUserRequestImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUserRequestImplCopyWith<_$PostUserRequestImpl> get copyWith =>
      __$$PostUserRequestImplCopyWithImpl<_$PostUserRequestImpl>(
          this, _$identity);
}

abstract class _PostUserRequest implements PostUserRequest {
  const factory _PostUserRequest({required final UserApp user}) =
      _$PostUserRequestImpl;

// required List<ProductOrder> products,
// required UserApp user,
// required OrderInfo orderInfo,
// required String note,
  @override
  UserApp get user;

  /// Create a copy of PostUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostUserRequestImplCopyWith<_$PostUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
