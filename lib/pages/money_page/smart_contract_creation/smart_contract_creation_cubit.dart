import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class SmartContractCreationCubit extends Cubit<SmartContractCreationState> {
  SmartContractCreationCubit() : super(const SmartContractCreationState());

  final S translate = getIt<S>();

  Future<void> init() async {
    List<String> dropdownValues = [translate.rent, translate.transportation];
    //request contructors
    var uuid = Uuid();
    List<String> contructorIdList = [
      uuid.v4(),
      uuid.v4(),
      uuid.v4(),
      uuid.v4(),
      uuid.v4(),
    ];

    emit(SmartContractCreationState(
      typeList: dropdownValues,
      contructorList: contructorIdList,
    ));
  }

  Future<void> selectType(String type) async {
    if (type == translate.transportation) {}
    emit(state.copyWith(
      selectedType: type,
    ));
  }

  Future<void> selectContructor(String contructorId) async {
    emit(state.copyWith(selectedContructor: contructorId));
  }

  Future<void> addressChanged(String address) async {
    emit(state.copyWith(address: address));
  }

  Future<void> selectedDateTimeRange(DateTimeRange range) async {
    emit(state.copyWith(selectedTimeInterval: range));
  }
}
