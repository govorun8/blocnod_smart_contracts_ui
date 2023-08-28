// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_contract_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmartContract _$SmartContractFromJson(Map<String, dynamic> json) {
  return _SmartContract.fromJson(json);
}

/// @nodoc
mixin _$SmartContract {
  String get id => throw _privateConstructorUsedError;
  User get contractCreator => throw _privateConstructorUsedError;
  User get contractExecutor => throw _privateConstructorUsedError;
  double get contractValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get shipping =>
      throw _privateConstructorUsedError; // required DateTime startDate,
// required DateTime expirationDate,
  SmartContractStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartContractCopyWith<SmartContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartContractCopyWith<$Res> {
  factory $SmartContractCopyWith(
          SmartContract value, $Res Function(SmartContract) then) =
      _$SmartContractCopyWithImpl<$Res, SmartContract>;
  @useResult
  $Res call(
      {String id,
      User contractCreator,
      User contractExecutor,
      double contractValue,
      Map<String, dynamic>? shipping,
      SmartContractStatus status});

  $UserCopyWith<$Res> get contractCreator;
  $UserCopyWith<$Res> get contractExecutor;
}

/// @nodoc
class _$SmartContractCopyWithImpl<$Res, $Val extends SmartContract>
    implements $SmartContractCopyWith<$Res> {
  _$SmartContractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contractCreator = null,
    Object? contractExecutor = null,
    Object? contractValue = null,
    Object? shipping = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contractCreator: null == contractCreator
          ? _value.contractCreator
          : contractCreator // ignore: cast_nullable_to_non_nullable
              as User,
      contractExecutor: null == contractExecutor
          ? _value.contractExecutor
          : contractExecutor // ignore: cast_nullable_to_non_nullable
              as User,
      contractValue: null == contractValue
          ? _value.contractValue
          : contractValue // ignore: cast_nullable_to_non_nullable
              as double,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmartContractStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get contractCreator {
    return $UserCopyWith<$Res>(_value.contractCreator, (value) {
      return _then(_value.copyWith(contractCreator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get contractExecutor {
    return $UserCopyWith<$Res>(_value.contractExecutor, (value) {
      return _then(_value.copyWith(contractExecutor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SmartContractCopyWith<$Res>
    implements $SmartContractCopyWith<$Res> {
  factory _$$_SmartContractCopyWith(
          _$_SmartContract value, $Res Function(_$_SmartContract) then) =
      __$$_SmartContractCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User contractCreator,
      User contractExecutor,
      double contractValue,
      Map<String, dynamic>? shipping,
      SmartContractStatus status});

  @override
  $UserCopyWith<$Res> get contractCreator;
  @override
  $UserCopyWith<$Res> get contractExecutor;
}

/// @nodoc
class __$$_SmartContractCopyWithImpl<$Res>
    extends _$SmartContractCopyWithImpl<$Res, _$_SmartContract>
    implements _$$_SmartContractCopyWith<$Res> {
  __$$_SmartContractCopyWithImpl(
      _$_SmartContract _value, $Res Function(_$_SmartContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contractCreator = null,
    Object? contractExecutor = null,
    Object? contractValue = null,
    Object? shipping = freezed,
    Object? status = null,
  }) {
    return _then(_$_SmartContract(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contractCreator: null == contractCreator
          ? _value.contractCreator
          : contractCreator // ignore: cast_nullable_to_non_nullable
              as User,
      contractExecutor: null == contractExecutor
          ? _value.contractExecutor
          : contractExecutor // ignore: cast_nullable_to_non_nullable
              as User,
      contractValue: null == contractValue
          ? _value.contractValue
          : contractValue // ignore: cast_nullable_to_non_nullable
              as double,
      shipping: freezed == shipping
          ? _value._shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmartContractStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmartContract implements _SmartContract {
  const _$_SmartContract(
      {required this.id,
      required this.contractCreator,
      required this.contractExecutor,
      required this.contractValue,
      final Map<String, dynamic>? shipping,
      required this.status})
      : _shipping = shipping;

  factory _$_SmartContract.fromJson(Map<String, dynamic> json) =>
      _$$_SmartContractFromJson(json);

  @override
  final String id;
  @override
  final User contractCreator;
  @override
  final User contractExecutor;
  @override
  final double contractValue;
  final Map<String, dynamic>? _shipping;
  @override
  Map<String, dynamic>? get shipping {
    final value = _shipping;
    if (value == null) return null;
    if (_shipping is EqualUnmodifiableMapView) return _shipping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// required DateTime startDate,
// required DateTime expirationDate,
  @override
  final SmartContractStatus status;

  @override
  String toString() {
    return 'SmartContract(id: $id, contractCreator: $contractCreator, contractExecutor: $contractExecutor, contractValue: $contractValue, shipping: $shipping, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContract &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contractCreator, contractCreator) ||
                other.contractCreator == contractCreator) &&
            (identical(other.contractExecutor, contractExecutor) ||
                other.contractExecutor == contractExecutor) &&
            (identical(other.contractValue, contractValue) ||
                other.contractValue == contractValue) &&
            const DeepCollectionEquality().equals(other._shipping, _shipping) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      contractCreator,
      contractExecutor,
      contractValue,
      const DeepCollectionEquality().hash(_shipping),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartContractCopyWith<_$_SmartContract> get copyWith =>
      __$$_SmartContractCopyWithImpl<_$_SmartContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmartContractToJson(
      this,
    );
  }
}

abstract class _SmartContract implements SmartContract {
  const factory _SmartContract(
      {required final String id,
      required final User contractCreator,
      required final User contractExecutor,
      required final double contractValue,
      final Map<String, dynamic>? shipping,
      required final SmartContractStatus status}) = _$_SmartContract;

  factory _SmartContract.fromJson(Map<String, dynamic> json) =
      _$_SmartContract.fromJson;

  @override
  String get id;
  @override
  User get contractCreator;
  @override
  User get contractExecutor;
  @override
  double get contractValue;
  @override
  Map<String, dynamic>? get shipping;
  @override // required DateTime startDate,
// required DateTime expirationDate,
  SmartContractStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCopyWith<_$_SmartContract> get copyWith =>
      throw _privateConstructorUsedError;
}
