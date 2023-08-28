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
      ];
}
