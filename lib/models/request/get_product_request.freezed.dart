// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProductRequest {
  String get productId => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  String get partnerId => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProductRequestCopyWith<GetProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductRequestCopyWith<$Res> {
  factory $GetProductRequestCopyWith(
          GetProductRequest value, $Res Function(GetProductRequest) then) =
      _$GetProductRequestCopyWithImpl<$Res, GetProductRequest>;
  @useResult
  $Res call({String productId, String searchText, String partnerId, int limit});
}

/// @nodoc
class _$GetProductRequestCopyWithImpl<$Res, $Val extends GetProductRequest>
    implements $GetProductRequestCopyWith<$Res> {
  _$GetProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? searchText = null,
    Object? partnerId = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductRequestImplCopyWith<$Res>
    implements $GetProductRequestCopyWith<$Res> {
  factory _$$GetProductRequestImplCopyWith(_$GetProductRequestImpl value,
          $Res Function(_$GetProductRequestImpl) then) =
      __$$GetProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, String searchText, String partnerId, int limit});
}

/// @nodoc
class __$$GetProductRequestImplCopyWithImpl<$Res>
    extends _$GetProductRequestCopyWithImpl<$Res, _$GetProductRequestImpl>
    implements _$$GetProductRequestImplCopyWith<$Res> {
  __$$GetProductRequestImplCopyWithImpl(_$GetProductRequestImpl _value,
      $Res Function(_$GetProductRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? searchText = null,
    Object? partnerId = null,
    Object? limit = null,
  }) {
    return _then(_$GetProductRequestImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GetProductRequestImpl implements _GetProductRequest {
  const _$GetProductRequestImpl(
      {this.productId = '',
      this.searchText = '',
      this.partnerId = '',
      this.limit = 0});

  @override
  @JsonKey()
  final String productId;
  @override
  @JsonKey()
  final String searchText;
  @override
  @JsonKey()
  final String partnerId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetProductRequest(productId: $productId, searchText: $searchText, partnerId: $partnerId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, searchText, partnerId, limit);

  /// Create a copy of GetProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductRequestImplCopyWith<_$GetProductRequestImpl> get copyWith =>
      __$$GetProductRequestImplCopyWithImpl<_$GetProductRequestImpl>(
          this, _$identity);
}

abstract class _GetProductRequest implements GetProductRequest {
  const factory _GetProductRequest(
      {final String productId,
      final String searchText,
      final String partnerId,
      final int limit}) = _$GetProductRequestImpl;

  @override
  String get productId;
  @override
  String get searchText;
  @override
  String get partnerId;
  @override
  int get limit;

  /// Create a copy of GetProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductRequestImplCopyWith<_$GetProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
