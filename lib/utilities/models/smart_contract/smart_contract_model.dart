import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_contract_model.freezed.dart';
part 'smart_contract_model.g.dart';

@freezed
class SmartContract with _$SmartContract {
  const factory SmartContract({
    required SmartContractType type,
    required String creatorId,
    required String executorId,
    required double value,
    required String arbitration,
    Map<String, dynamic>? additionalStatements,
  }) = _SmartContract;

  factory SmartContract.fromJson(Map<String, Object?> json) =>
      _$SmartContractFromJson(json);
}
