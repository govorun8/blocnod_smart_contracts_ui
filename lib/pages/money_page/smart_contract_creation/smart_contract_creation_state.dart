import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SmartContractCreationState extends Equatable {
  final List<String>? typeList;
  final String? selectedType;
  final List<String>? contructorList;
  final String? selectedContructor;
  final String? address;
  final List<String>? pointsList;
  final String? selectedPoint;
  final DateTimeRange? selectedTimeInterval;
  final String? rentalPrice;
  final String? deposit;
  final DateTime? selectedDateTime;
  final bool? selectedUtilitiesPayment;
  final bool? selectedPetsAllowed;
  final List<String>? arbitrationMechanismList;
  final String? selectedArbitrationMechanism;
  //
  final String? selectedDeparturePoint;
  final String? selectedDestinationPoint;
  final String? cargoWeight;
  final DateTime? arrivalDate;
  final DateTime? shipmentDate;
  final bool? insurance;
  final String? driverName;
  final String? driverContact;
  final String? selectedPaymentType;
  final List<String>? listPaymentTypes;
  final String? prepaymentAmount;
  final ResponseStatus? responseStatus;

  const SmartContractCreationState({
    this.typeList,
    this.selectedType,
    this.contructorList,
    this.selectedContructor,
    this.address,
    this.pointsList,
    this.selectedPoint,
    this.selectedTimeInterval,
    this.rentalPrice,
    this.deposit,
    this.selectedDateTime,
    this.selectedUtilitiesPayment,
    this.selectedPetsAllowed,
    this.arbitrationMechanismList,
    this.selectedArbitrationMechanism,
    this.selectedDeparturePoint,
    this.selectedDestinationPoint,
    this.cargoWeight,
    this.arrivalDate,
    this.shipmentDate,
    this.insurance,
    this.driverName,
    this.driverContact,
    this.selectedPaymentType,
    this.listPaymentTypes,
    this.prepaymentAmount,
    this.responseStatus,
  });

  SmartContractCreationState copyWith({
    List<String>? typeList,
    String? selectedType,
    List<String>? contructorList,
    String? selectedContructor,
    String? address,
    List<String>? pointsList,
    String? selectedPoint,
    DateTimeRange? selectedTimeInterval,
    String? rentalPrice,
    String? deposit,
    DateTime? selectedDateTime,
    bool? selectedUtilitiesPayment,
    bool? selectedPetsAllowed,
    List<String>? arbitrationMechanismList,
    String? selectedArbitrationMechanism,
    String? selectedDeparturePoint,
    String? selectedDestinationPoint,
    String? cargoWeight,
    DateTime? arrivalDate,
    DateTime? shipmentDate,
    bool? insurance,
    String? driverName,
    String? driverContact,
    String? selectedPaymentType,
    List<String>? listPaymentTypes,
    String? prepaymentAmount,
    ResponseStatus? responseStatus,
  }) {
    return SmartContractCreationState(
      typeList: typeList ?? this.typeList,
      selectedType: selectedType ?? this.selectedType,
      contructorList: contructorList ?? this.contructorList,
      selectedContructor: selectedContructor ?? this.selectedContructor,
      address: address ?? this.address,
      pointsList: pointsList ?? this.pointsList,
      selectedPoint: selectedPoint ?? this.selectedPoint,
      selectedTimeInterval: selectedTimeInterval ?? this.selectedTimeInterval,
      rentalPrice: rentalPrice ?? this.rentalPrice,
      deposit: deposit ?? this.deposit,
      selectedDateTime: selectedDateTime ?? this.selectedDateTime,
      selectedUtilitiesPayment:
          selectedUtilitiesPayment ?? this.selectedUtilitiesPayment,
      selectedPetsAllowed: selectedPetsAllowed ?? this.selectedPetsAllowed,
      arbitrationMechanismList:
          arbitrationMechanismList ?? this.arbitrationMechanismList,
      selectedArbitrationMechanism:
          selectedArbitrationMechanism ?? this.selectedArbitrationMechanism,
      selectedDeparturePoint:
          selectedDeparturePoint ?? this.selectedDeparturePoint,
      selectedDestinationPoint:
          selectedDestinationPoint ?? this.selectedDestinationPoint,
      cargoWeight: cargoWeight ?? this.cargoWeight,
      arrivalDate: arrivalDate ?? this.arrivalDate,
      shipmentDate: shipmentDate ?? this.shipmentDate,
      insurance: insurance ?? this.insurance,
      driverName: driverName ?? this.driverName,
      driverContact: driverContact ?? this.driverContact,
      selectedPaymentType: selectedPaymentType ?? this.selectedPaymentType,
      listPaymentTypes: listPaymentTypes ?? this.listPaymentTypes,
      prepaymentAmount: prepaymentAmount ?? this.prepaymentAmount,
      responseStatus: responseStatus ?? this.responseStatus,
    );
  }

  @override
  List<Object?> get props => [
        typeList,
        selectedType,
        contructorList,
        selectedContructor,
        address,
        selectedPoint,
        pointsList,
        selectedTimeInterval,
        rentalPrice,
        deposit,
        selectedDateTime,
        selectedUtilitiesPayment,
        selectedPetsAllowed,
        arbitrationMechanismList,
        selectedArbitrationMechanism,
        selectedDeparturePoint,
        selectedDestinationPoint,
        cargoWeight,
        arrivalDate,
        shipmentDate,
        insurance,
        driverName,
        driverContact,
        selectedPaymentType,
        listPaymentTypes,
        prepaymentAmount,
        responseStatus,
      ];
}
