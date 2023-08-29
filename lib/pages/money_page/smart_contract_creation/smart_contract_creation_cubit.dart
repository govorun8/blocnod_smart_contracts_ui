import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/user_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uuid/uuid.dart';

class SmartContractCreationCubit extends Cubit<SmartContractCreationState> {
  SmartContractCreationCubit() : super(const SmartContractCreationState());
  final S translate = getIt<S>();
  final UserController userController = getIt<UserController>();
  final ContractsController contractsController = getIt<ContractsController>();

  Future<void> init() async {
    List<String> dropdownValues = [translate.rent, translate.transportation];

    final contructorIdList = await userController.getContructorsList();

    List<String> arbitrationMechanismList = [
      translate.court,
      translate.penalty,
      translate.own_version
    ];
    List<String> paymentTypeList = [
      translate.prepayment,
      translate.payment_after,
    ];

    emit(SmartContractCreationState(
      typeList: dropdownValues,
      contructorList: contructorIdList,
      arbitrationMechanismList: arbitrationMechanismList,
      listPaymentTypes: paymentTypeList,
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

  Future<void> departurePointChanged(String departurePoint) async {
    emit(state.copyWith(selectedDeparturePoint: departurePoint));
  }

  Future<void> destinationPointChanged(String destinationPoint) async {
    emit(state.copyWith(selectedDestinationPoint: destinationPoint));
  }

  Future<void> changeCargoWeight(String cargoWeight) async {
    emit(state.copyWith(cargoWeight: cargoWeight));
  }

  Future<void> selectArrivalDate(DateTime dateTime) async {
    emit(state.copyWith(arrivalDate: dateTime));
  }

  Future<void> selectShipmentDate(DateTime dateTime) async {
    emit(state.copyWith(shipmentDate: dateTime));
  }

  Future<void> changeInsuranse(String insurance) async {
    emit(state.copyWith(insurance: insurance));
  }

  Future<void> changeDriverName(String driverName) async {
    emit(state.copyWith(driverName: driverName));
  }

  Future<void> changeDriverContact(String driverContact) async {
    emit(state.copyWith(driverContact: driverContact));
  }

  Future<void> selectPaymentType(String paymentType) async {
    emit(state.copyWith(selectedPaymentType: paymentType));
  }

  Future<void> changePrepaymentAmoount(String prepaymentAmount) async {
    emit(state.copyWith(prepaymentAmount: prepaymentAmount));
  }

  Future<void> createSmartContract() async {
    User curentUser = userController.user;
    Map<String, String> map = {};
    if (state.selectedType != null &&
        state.selectedContructor != null &&
        state.selectedArbitrationMechanism != null) {
      map.addAll({
        'address': state.address ?? '',
      });
      await contractsController.createNewSmartContract(
        state.selectedType == translate.rent
            ? SmartContractType.rent
            : SmartContractType.transportation,
        curentUser.id,
        state.selectedContructor!,
        10,
        state.selectedArbitrationMechanism!,
        map,
      );
    }
  }
}
