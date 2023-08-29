// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SmartContract _$$_SmartContractFromJson(Map<String, dynamic> json) =>
    _$_SmartContract(
      type: $enumDecode(_$SmartContractTypeEnumMap, json['type']),
      creatorId: json['creatorId'] as String,
      executorId: json['executorId'] as String,
      value: (json['value'] as num).toDouble(),
      arbitration: json['arbitration'] as String,
      additionalStatements:
          json['additionalStatements'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_SmartContractToJson(_$_SmartContract instance) =>
    <String, dynamic>{
      'type': _$SmartContractTypeEnumMap[instance.type]!,
      'creatorId': instance.creatorId,
      'executorId': instance.executorId,
      'value': instance.value,
      'arbitration': instance.arbitration,
      'additionalStatements': instance.additionalStatements,
    };

const _$SmartContractTypeEnumMap = {
  SmartContractType.rent: 'rent',
  SmartContractType.transportation: 'transportation',
};
