import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_contract_from_back.freezed.dart';
part 'smart_contract_from_back.g.dart';

@freezed
class SmartContractFromBack with _$SmartContractFromBack {
  const factory SmartContractFromBack({
    required String id,
    required SmartContractType type,
    required User creator,
    required User executor,
    required double value,
    required String arbitration,
    required SmartContractStatus status,
    Map<String, String>? additionalStatements,
  }) = _SmartContractFromBack;

  factory SmartContractFromBack.fromJson(Map<String, Object?> json) =>
      _$SmartContractFromBackFromJson(json);
}
