import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contracts_to_confirm_state.freezed.dart';

@freezed
class ContractsToConfirmState with _$ContractsToConfirmState {
  factory ContractsToConfirmState.loading() = _ContractsToConfirmStateLoading;

  factory ContractsToConfirmState.inited({
    required List<SmartContractFromBack> contractsToConfirmationList,
    required User user,
  }) = _ContractsToConfirmStateInited;

  factory ContractsToConfirmState.finished() = _ContractsToConfirmStateFinished;

  factory ContractsToConfirmState.error() = _ContractsToConfirmStateError;
}
