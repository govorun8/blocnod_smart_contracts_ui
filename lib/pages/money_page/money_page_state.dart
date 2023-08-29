import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_page_state.freezed.dart';

@freezed
class MoneyPageState with _$MoneyPageState {
  factory MoneyPageState.loading() = _MoneyPageStateLoading;

  factory MoneyPageState.inited({
    required List<SmartContractFromBack> contractsList,
    required User user,
  }) = _MoneyPageStateInited;

  factory MoneyPageState.finished() = _MoneyPageStateFinished;

  factory MoneyPageState.error() = _MoneyPageStateError;
}
