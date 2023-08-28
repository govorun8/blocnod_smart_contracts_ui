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
      shipping: json['shipping'] as Map<String, dynamic>?,
      status: $enumDecode(_$SmartContractStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_SmartContractToJson(_$_SmartContract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contractCreator': instance.contractCreator,
      'contractExecutor': instance.contractExecutor,
      'contractValue': instance.contractValue,
      'shipping': instance.shipping,
      'status': _$SmartContractStatusEnumMap[instance.status]!,
    };

const _$SmartContractStatusEnumMap = {
  SmartContractStatus.created: 'created',
  SmartContractStatus.inProgress: 'inProgress',
  SmartContractStatus.done: 'done',
  SmartContractStatus.error: 'error',
};
