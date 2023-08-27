import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_contract_creation_state.freezed.dart';

@freezed
class SmartContractCreationState with _$SmartContractCreationState {
  factory SmartContractCreationState.editind({
    ResponseStatus? responseStatus,
  }) = _SmartContractCreationStateEditing;

  factory SmartContractCreationState.inProgress({
    ResponseStatus? responseStatus,
  }) = _SmartContractCreationStateInProgress;

  factory SmartContractCreationState.finished({
    required ResponseStatus responseStatus,
  }) = _SmartContractCreationStateFinished;

  factory SmartContractCreationState.error({
    required ResponseStatus responseStatus,
  }) = _SmartContractCreationStateError;
}
