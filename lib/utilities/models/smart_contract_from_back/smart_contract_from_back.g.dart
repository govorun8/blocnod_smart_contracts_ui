// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_contract_from_back.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SmartContractFromBack _$$_SmartContractFromBackFromJson(
        Map<String, dynamic> json) =>
    _$_SmartContractFromBack(
      id: json['id'] as String,
      type: $enumDecode(_$SmartContractTypeEnumMap, json['type']),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      executor: User.fromJson(json['executor'] as Map<String, dynamic>),
      value: (json['value'] as num).toDouble(),
      arbitration: json['arbitration'] as String,
      status: $enumDecode(_$SmartContractStatusEnumMap, json['status']),
      additionalStatements:
          (json['additionalStatements'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_SmartContractFromBackToJson(
        _$_SmartContractFromBack instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SmartContractTypeEnumMap[instance.type]!,
      'creator': instance.creator,
      'executor': instance.executor,
      'value': instance.value,
      'arbitration': instance.arbitration,
      'status': _$SmartContractStatusEnumMap[instance.status]!,
      'additionalStatements': instance.additionalStatements,
    };

const _$SmartContractTypeEnumMap = {
  SmartContractType.rent: 'rent',
  SmartContractType.transportation: 'transportation',
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
