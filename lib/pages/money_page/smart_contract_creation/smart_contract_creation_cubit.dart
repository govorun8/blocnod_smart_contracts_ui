import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmartContractCreationCubit extends Cubit<SmartContractCreationState> {
  SmartContractCreationCubit() : super(SmartContractCreationState.editind());

  Future<void> init() async {
    emit(SmartContractCreationState.inProgress());

    emit(SmartContractCreationState.editind());
  }
}
