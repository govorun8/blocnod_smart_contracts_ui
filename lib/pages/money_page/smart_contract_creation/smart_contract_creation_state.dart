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

  const SmartContractCreationState({
    this.typeList,
    this.selectedType,
    this.contructorList,
    this.selectedContructor,
    this.address,
    this.pointsList,
    this.selectedPoint,
    this.selectedTimeInterval,
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
      ];
}
