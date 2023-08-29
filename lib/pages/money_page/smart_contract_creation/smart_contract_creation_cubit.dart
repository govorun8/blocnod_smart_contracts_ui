import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/pre_filed_fields_controller.dart';
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
  final PreSelectedFieldsController preSelectedFieldsController =
      getIt<PreSelectedFieldsController>();

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
    String userId = userController.user.id;
    bool? insurance =
        await preSelectedFieldsController.getBool('insurance$userId');
    bool? utilitiesPayment =
        await preSelectedFieldsController.getBool('utilitiesPayment$userId');
    bool? petsAllowed =
        await preSelectedFieldsController.getBool('petsAllowed$userId');
    String? address =
        await preSelectedFieldsController.getString('address$userId');
    String? arbitration =
        await preSelectedFieldsController.getString('arbitration$userId');
    String? paymentType =
        await preSelectedFieldsController.getString('paymentType$userId');

    emit(SmartContractCreationState(
      typeList: dropdownValues,
      contructorList: contructorIdList,
      arbitrationMechanismList: arbitrationMechanismList,
      listPaymentTypes: paymentTypeList,
      insurance: insurance,
      selectedUtilitiesPayment: utilitiesPayment,
      selectedPetsAllowed: petsAllowed,
      address: address,
      selectedArbitrationMechanism: arbitration,
      selectedPaymentType: paymentType,
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

  Future<void> changeInsuranse(bool insurance) async {
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
    rememberValues();
    User curentUser = userController.user;
    Map<String, String> map = {};
    if (state.selectedType != null &&
        state.selectedContructor != null &&
        state.selectedArbitrationMechanism != null) {
      map.addAll({
        'address': state.address ?? '',
      });
      final result = await contractsController.createNewSmartContract(
        state.selectedType == translate.rent
            ? SmartContractType.rent
            : SmartContractType.transportation,
        curentUser.id,
        state.selectedContructor!,
        10,
        state.selectedArbitrationMechanism!,
        map,
      );
      emit(state.copyWith(responseStatus: result));
    }
  }

  Future<void> rememberValues() async {
    String userId = userController.user.id;

    if (state.insurance != null) {
      preSelectedFieldsController.setBool('insurance$userId', state.insurance!);
    }

    if (state.selectedPetsAllowed != null) {
      preSelectedFieldsController.setBool(
          'petsAllowed$userId', state.selectedPetsAllowed!);
    }

    if (state.selectedUtilitiesPayment != null) {
      preSelectedFieldsController.setBool(
          'utilitiesPayment$userId', state.selectedUtilitiesPayment!);
    }

    if (state.address != null) {
      preSelectedFieldsController.setString('address$userId', state.address!);
    }

    if (state.selectedArbitrationMechanism != null) {
      preSelectedFieldsController.setString(
          'arbitration$userId', state.selectedArbitrationMechanism!);
    }
    if (state.selectedPaymentType != null) {
      preSelectedFieldsController.setString(
          'paymentType$userId', state.selectedPaymentType!);
    }
  }
}
