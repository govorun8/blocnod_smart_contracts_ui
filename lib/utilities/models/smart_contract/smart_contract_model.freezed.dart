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
  SmartContractType get type => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  String get executorId => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get arbitration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalStatements =>
      throw _privateConstructorUsedError;

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
      {SmartContractType type,
      String creatorId,
      String executorId,
      double value,
      String arbitration,
      Map<String, dynamic>? additionalStatements});
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
    Object? type = null,
    Object? creatorId = null,
    Object? executorId = null,
    Object? value = null,
    Object? arbitration = null,
    Object? additionalStatements = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SmartContractType,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      executorId: null == executorId
          ? _value.executorId
          : executorId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      arbitration: null == arbitration
          ? _value.arbitration
          : arbitration // ignore: cast_nullable_to_non_nullable
              as String,
      additionalStatements: freezed == additionalStatements
          ? _value.additionalStatements
          : additionalStatements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
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
      {SmartContractType type,
      String creatorId,
      String executorId,
      double value,
      String arbitration,
      Map<String, dynamic>? additionalStatements});
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
    Object? type = null,
    Object? creatorId = null,
    Object? executorId = null,
    Object? value = null,
    Object? arbitration = null,
    Object? additionalStatements = freezed,
  }) {
    return _then(_$_SmartContract(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SmartContractType,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      executorId: null == executorId
          ? _value.executorId
          : executorId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      arbitration: null == arbitration
          ? _value.arbitration
          : arbitration // ignore: cast_nullable_to_non_nullable
              as String,
      additionalStatements: freezed == additionalStatements
          ? _value._additionalStatements
          : additionalStatements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmartContract implements _SmartContract {
  const _$_SmartContract(
      {required this.type,
      required this.creatorId,
      required this.executorId,
      required this.value,
      required this.arbitration,
      final Map<String, dynamic>? additionalStatements})
      : _additionalStatements = additionalStatements;

  factory _$_SmartContract.fromJson(Map<String, dynamic> json) =>
      _$$_SmartContractFromJson(json);

  @override
  final SmartContractType type;
  @override
  final String creatorId;
  @override
  final String executorId;
  @override
  final double value;
  @override
  final String arbitration;
  final Map<String, dynamic>? _additionalStatements;
  @override
  Map<String, dynamic>? get additionalStatements {
    final value = _additionalStatements;
    if (value == null) return null;
    if (_additionalStatements is EqualUnmodifiableMapView)
      return _additionalStatements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SmartContract(type: $type, creatorId: $creatorId, executorId: $executorId, value: $value, arbitration: $arbitration, additionalStatements: $additionalStatements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContract &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.executorId, executorId) ||
                other.executorId == executorId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.arbitration, arbitration) ||
                other.arbitration == arbitration) &&
            const DeepCollectionEquality()
                .equals(other._additionalStatements, _additionalStatements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      creatorId,
      executorId,
      value,
      arbitration,
      const DeepCollectionEquality().hash(_additionalStatements));

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
      {required final SmartContractType type,
      required final String creatorId,
      required final String executorId,
      required final double value,
      required final String arbitration,
      final Map<String, dynamic>? additionalStatements}) = _$_SmartContract;

  factory _SmartContract.fromJson(Map<String, dynamic> json) =
      _$_SmartContract.fromJson;

  @override
  SmartContractType get type;
  @override
  String get creatorId;
  @override
  String get executorId;
  @override
  double get value;
  @override
  String get arbitration;
  @override
  Map<String, dynamic>? get additionalStatements;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCopyWith<_$_SmartContract> get copyWith =>
      throw _privateConstructorUsedError;
}
