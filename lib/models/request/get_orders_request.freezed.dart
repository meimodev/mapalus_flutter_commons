// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetOrdersRequest {
  List<String> get productIds => throw _privateConstructorUsedError;
  DateTimeRange? get dateRange => throw _privateConstructorUsedError;
  UserApp? get userApp => throw _privateConstructorUsedError;
  String? get partnerId => throw _privateConstructorUsedError;

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetOrdersRequestCopyWith<GetOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersRequestCopyWith<$Res> {
  factory $GetOrdersRequestCopyWith(
          GetOrdersRequest value, $Res Function(GetOrdersRequest) then) =
      _$GetOrdersRequestCopyWithImpl<$Res, GetOrdersRequest>;
  @useResult
  $Res call(
      {List<String> productIds,
      DateTimeRange? dateRange,
      UserApp? userApp,
      String? partnerId});

  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class _$GetOrdersRequestCopyWithImpl<$Res, $Val extends GetOrdersRequest>
    implements $GetOrdersRequestCopyWith<$Res> {
  _$GetOrdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productIds = null,
    Object? dateRange = freezed,
    Object? userApp = freezed,
    Object? partnerId = freezed,
  }) {
    return _then(_value.copyWith(
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      userApp: freezed == userApp
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAppCopyWith<$Res>? get userApp {
    if (_value.userApp == null) {
      return null;
    }

    return $UserAppCopyWith<$Res>(_value.userApp!, (value) {
      return _then(_value.copyWith(userApp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetOrdersRequestImplCopyWith<$Res>
    implements $GetOrdersRequestCopyWith<$Res> {
  factory _$$GetOrdersRequestImplCopyWith(_$GetOrdersRequestImpl value,
          $Res Function(_$GetOrdersRequestImpl) then) =
      __$$GetOrdersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> productIds,
      DateTimeRange? dateRange,
      UserApp? userApp,
      String? partnerId});

  @override
  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class __$$GetOrdersRequestImplCopyWithImpl<$Res>
    extends _$GetOrdersRequestCopyWithImpl<$Res, _$GetOrdersRequestImpl>
    implements _$$GetOrdersRequestImplCopyWith<$Res> {
  __$$GetOrdersRequestImplCopyWithImpl(_$GetOrdersRequestImpl _value,
      $Res Function(_$GetOrdersRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productIds = null,
    Object? dateRange = freezed,
    Object? userApp = freezed,
    Object? partnerId = freezed,
  }) {
    return _then(_$GetOrdersRequestImpl(
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      userApp: freezed == userApp
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetOrdersRequestImpl implements _GetOrdersRequest {
  const _$GetOrdersRequestImpl(
      {final List<String> productIds = const [],
      this.dateRange,
      this.userApp,
      this.partnerId})
      : _productIds = productIds;

  final List<String> _productIds;
  @override
  @JsonKey()
  List<String> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  final DateTimeRange? dateRange;
  @override
  final UserApp? userApp;
  @override
  final String? partnerId;

  @override
  String toString() {
    return 'GetOrdersRequest(productIds: $productIds, dateRange: $dateRange, userApp: $userApp, partnerId: $partnerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.userApp, userApp) || other.userApp == userApp) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productIds),
      dateRange,
      userApp,
      partnerId);

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersRequestImplCopyWith<_$GetOrdersRequestImpl> get copyWith =>
      __$$GetOrdersRequestImplCopyWithImpl<_$GetOrdersRequestImpl>(
          this, _$identity);
}

abstract class _GetOrdersRequest implements GetOrdersRequest {
  const factory _GetOrdersRequest(
      {final List<String> productIds,
      final DateTimeRange? dateRange,
      final UserApp? userApp,
      final String? partnerId}) = _$GetOrdersRequestImpl;

  @override
  List<String> get productIds;
  @override
  DateTimeRange? get dateRange;
  @override
  UserApp? get userApp;
  @override
  String? get partnerId;

  /// Create a copy of GetOrdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrdersRequestImplCopyWith<_$GetOrdersRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
