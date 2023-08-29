import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState.loading() = _HomePageStateLoading;

  factory HomePageState.inited({
    required List<SmartContractFromBack> contractsList,
    required List<String> languageList,
    required String selectedLanguage,
    required User user,
  }) = _HomePageStateInited;

  factory HomePageState.finished() = _HomePageStateFinished;

  factory HomePageState.error() = _HomePageStateError;
}
