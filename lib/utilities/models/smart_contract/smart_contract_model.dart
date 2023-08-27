import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_contract_model.freezed.dart';
part 'smart_contract_model.g.dart';

@freezed
class SmartContract with _$SmartContract {
  const factory SmartContract({
    required String id,
    required User contractCreator,
    required User contractExecutor,
    required double contractValue,
    required DateTime startDate,
    required DateTime expirationDate,
    required SmartContractStatus status,
    required SmartContractType type,
  }) = _SmartContract;

  factory SmartContract.fromJson(Map<String, Object?> json) =>
      _$SmartContractFromJson(json);
}
