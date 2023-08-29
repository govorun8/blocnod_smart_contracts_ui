import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState.loading() = _HomePageStateLoading;

  factory HomePageState.inited({
    required List<SmartContract> contractsList,
    required List<String> languageList,
    required String selectedLanguage,
  }) = _HomePageStateInited;

  factory HomePageState.finished() = _HomePageStateFinished;

  factory HomePageState.error() = _HomePageStateError;
}
