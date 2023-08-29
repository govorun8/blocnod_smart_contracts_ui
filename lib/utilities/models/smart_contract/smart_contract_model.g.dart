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
      status: $enumDecode(_$SmartContractStatusEnumMap, json['status']),
      shipping: json['shipping'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_SmartContractToJson(_$_SmartContract instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contractCreator': instance.contractCreator,
      'contractExecutor': instance.contractExecutor,
      'contractValue': instance.contractValue,
      'status': _$SmartContractStatusEnumMap[instance.status]!,
      'shipping': instance.shipping,
    };

const _$SmartContractStatusEnumMap = {
  SmartContractStatus.created: 'created',
  SmartContractStatus.inProgress: 'inProgress',
  SmartContractStatus.finished: 'finished',
  SmartContractStatus.canceled: 'canceled',
  SmartContractStatus.creatorConfirmation: 'creatorConfirmation',
  SmartContractStatus.executorConfirmation: 'executorConfirmation',
  SmartContractStatus.executorAgreement: 'executorAgreement',
  SmartContractStatus.creatorAgreement: 'creatorAgreement',
};
