// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SmartContract _$$_SmartContractFromJson(Map<String, dynamic> json) =>
    _$_SmartContract(
      id: json['id'] as String,
      contractCreator:
          User.fromJson(json['contractCreator'] as Map<String, dynamic>),
      contractExecutor:
          User.fromJson(json['contractExecutor'] as Map<String, dynamic>),
      contractValue: (json['contractValue'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      status: $enumDecode(_$SmartContractStatusEnumMap, json['status']),
      type: $enumDecode(_$SmartContractTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SmartContractToJson(_$_SmartContract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contractCreator': instance.contractCreator,
      'contractExecutor': instance.contractExecutor,
      'contractValue': instance.contractValue,
      'startDate': instance.startDate.toIso8601String(),
      'expirationDate': instance.expirationDate.toIso8601String(),
      'status': _$SmartContractStatusEnumMap[instance.status]!,
      'type': _$SmartContractTypeEnumMap[instance.type]!,
    };

const _$SmartContractStatusEnumMap = {
  SmartContractStatus.created: 'created',
  SmartContractStatus.inProgress: 'inProgress',
  SmartContractStatus.done: 'done',
  SmartContractStatus.error: 'error',
};

const _$SmartContractTypeEnumMap = {
  SmartContractType.rent: 'rent',
  SmartContractType.transportation: 'transportation',
};
