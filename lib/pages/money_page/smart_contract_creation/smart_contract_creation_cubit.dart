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

    List<String> arbitrationMechanismList = [
      translate.court,
      translate.penalty,
      translate.own_version
    ];

    emit(SmartContractCreationState(
      typeList: dropdownValues,
      contructorList: contructorIdList,
      arbitrationMechanismList: arbitrationMechanismList,
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

  Future<void> selectDateTimeRange(DateTimeRange range) async {
    emit(state.copyWith(selectedTimeInterval: range));
  }

  Future<void> changeRentalPrice(String price) async {
    emit(state.copyWith(rentalPrice: price));
  }

  Future<void> changeDeposit(String deposit) async {
    emit(state.copyWith(deposit: deposit));
  }

  Future<void> selectDateTime(DateTime dateTime) async {
    emit(state.copyWith(selectedDateTime: dateTime));
  }

  Future<void> changeUtilitiesPayment(bool utilitiesPayment) async {
    emit(state.copyWith(selectedUtilitiesPayment: utilitiesPayment));
  }

  Future<void> changePetsAllowed(bool petsAllowed) async {
    emit(state.copyWith(selectedPetsAllowed: petsAllowed));
  }

  Future<void> selectArbitrationMechanism(String arbitrationMechanism) async {
    emit(state.copyWith(selectedArbitrationMechanism: arbitrationMechanism));
  }
}
