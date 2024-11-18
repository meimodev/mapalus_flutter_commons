// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserRequest {
  String? get documentId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserRequestCopyWith<GetUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserRequestCopyWith<$Res> {
  factory $GetUserRequestCopyWith(
          GetUserRequest value, $Res Function(GetUserRequest) then) =
      _$GetUserRequestCopyWithImpl<$Res, GetUserRequest>;
  @useResult
  $Res call({String? documentId, String? phone, int limit});
}

/// @nodoc
class _$GetUserRequestCopyWithImpl<$Res, $Val extends GetUserRequest>
    implements $GetUserRequestCopyWith<$Res> {
  _$GetUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? phone = freezed,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserRequestImplCopyWith<$Res>
    implements $GetUserRequestCopyWith<$Res> {
  factory _$$GetUserRequestImplCopyWith(_$GetUserRequestImpl value,
          $Res Function(_$GetUserRequestImpl) then) =
      __$$GetUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? documentId, String? phone, int limit});
}

/// @nodoc
class __$$GetUserRequestImplCopyWithImpl<$Res>
    extends _$GetUserRequestCopyWithImpl<$Res, _$GetUserRequestImpl>
    implements _$$GetUserRequestImplCopyWith<$Res> {
  __$$GetUserRequestImplCopyWithImpl(
      _$GetUserRequestImpl _value, $Res Function(_$GetUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? phone = freezed,
    Object? limit = null,
  }) {
    return _then(_$GetUserRequestImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GetUserRequestImpl implements _GetUserRequest {
  const _$GetUserRequestImpl({this.documentId, this.phone, this.limit = 0});

  @override
  final String? documentId;
  @override
  final String? phone;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetUserRequest(documentId: $documentId, phone: $phone, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRequestImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentId, phone, limit);

  /// Create a copy of GetUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRequestImplCopyWith<_$GetUserRequestImpl> get copyWith =>
      __$$GetUserRequestImplCopyWithImpl<_$GetUserRequestImpl>(
          this, _$identity);
}

abstract class _GetUserRequest implements GetUserRequest {
  const factory _GetUserRequest(
      {final String? documentId,
      final String? phone,
      final int limit}) = _$GetUserRequestImpl;

  @override
  String? get documentId;
  @override
  String? get phone;
  @override
  int get limit;

  /// Create a copy of GetUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserRequestImplCopyWith<_$GetUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
