import 'package:blocnod_smart_contracts_ui/components/custom_confirm_button.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_date_picker.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_date_range_picker.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_dropdown.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_switch_button.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_text_field.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmartContractCreationView extends StatefulWidget {
  const SmartContractCreationView({super.key});

  @override
  State<SmartContractCreationView> createState() =>
      SmartContractCreationViewState();
}

class SmartContractCreationViewState extends State<SmartContractCreationView> {
  final S translate = getIt<S>();
  final _cubit = SmartContractCreationCubit();
  bool isArbitrationMechanismDropdown = true;
  bool isPrepayment = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return BlocProvider(
      create: (context) => _cubit..init(),
      child: Material(
        color: theme.canvasColor,
        child:
            BlocBuilder<SmartContractCreationCubit, SmartContractCreationState>(
          builder: (context, state) {
            if (state.contructorList == null ||
                state.contructorList!.isEmpty ||
                state.typeList == null ||
                state.typeList!.isEmpty) {
              return _buildSomethingWentWrong();
            }

            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _buildForm(theme, state),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildForm(
    ThemeData theme,
    SmartContractCreationState state,
  ) {
    List<Widget> widgets = [];

    if (state.typeList != null && state.typeList!.isNotEmpty) {
      widgets.addAll([
        CustomDropdown(
          title: translate.select_contract_type,
          hint: state.selectedType ?? translate.type_not_selected,
          dropdownValues: state.typeList!,
          onChanged: (value) {
            if (value != null) {
              _cubit.selectType(value);
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ]);
    }
    if (state.contructorList != null && state.contructorList!.isNotEmpty) {
      widgets.addAll([
        CustomDropdown(
          title: translate.select_contractor,
          hint: state.selectedContructor ?? translate.contractor_not_selected,
          dropdownValues: state.contructorList!,
          onChanged: (value) {
            if (value != null) {
              _cubit.selectContructor(value);
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ]);
    }

    if (state.selectedType == translate.rent) {
      widgets.addAll(_buildRentForm(theme, state));
    } else if (state.selectedType == translate.transportation) {
      widgets.addAll(_buildDeliveryForm(theme, state));
    }

    widgets.add(_buildSaveButton(theme));

    return widgets;
  }

  List<Widget> _buildRentForm(
    ThemeData theme,
    SmartContractCreationState state,
  ) {
    return [
      CustomTextField(
        key: const ValueKey('address'),
        onChanged: (value) {
          _cubit.addressChanged(value);
        },
        title: translate.your_address,
        hint: translate.address_hint,
        text: state.address,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDateRangePicker(
        title: translate.rental_period,
        choosedDateTime: state.selectedTimeInterval ??
            DateTimeRange(
              start: DateTime.now(),
              end: DateTime.now().add(
                const Duration(
                  days: 7,
                ),
              ),
            ),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectDateTimeRange(value);
          }
        },
        translate: translate,
        theme: theme,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('rental price'),
        onChanged: (value) {
          _cubit.changeRentalPrice(value);
        },
        title: translate.rent_amount,
        hint: translate.hint_rent_amount,
        text: state.rentalPrice,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('deposit'),
        onChanged: (value) {
          _cubit.changeDeposit(value);
        },
        title: translate.security_deposit,
        hint: translate.hint_security_deposit,
        text: state.deposit,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDatePicker(
        title: translate.payment_due_date,
        choosedDateTime: state.selectedDateTime ?? DateTime.now(),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectDateTime(value);
          }
        },
        translate: translate,
        theme: theme,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDatePicker(
        title: translate.contract_start_date,
        choosedDateTime: state.selectedDateTime ?? DateTime.now(),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectDateTime(value);
          }
        },
        translate: translate,
        theme: theme,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomSwitchButton(
        title: translate.utility_payment,
        theme: theme,
        selectedState: state.selectedUtilitiesPayment ?? false,
        onChanged: (value) {
          _cubit.changeUtilitiesPayment(value);
        },
      ),
      CustomSwitchButton(
        title: translate.pets_allowed,
        theme: theme,
        selectedState: state.selectedPetsAllowed ?? false,
        onChanged: (value) {
          _cubit.changePetsAllowed(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      AnimatedCrossFade(
        firstChild: CustomDropdown(
          title: translate.arbitration_mechanism,
          hint: state.selectedArbitrationMechanism ??
              translate.arbitration_mechanism_not_selected,
          dropdownValues: state.arbitrationMechanismList!,
          onChanged: (value) {
            if (value != null) {
              if (value == translate.own_version) {
                setState(() {
                  isArbitrationMechanismDropdown = false;
                });
              } else {
                _cubit.selectArbitrationMechanism(value);
              }
            }
          },
        ),
        secondChild: CustomTextField(
          key: const ValueKey('arb'),
          onChanged: (value) {
            if (value.isNotEmpty) {
              _cubit.selectArbitrationMechanism(value);
            }
          },
          title: translate.arbitration_mechanism,
          hint: translate.enter_own_arbitration_mechanism,
          text: state.selectedArbitrationMechanism,
        ),
        crossFadeState: isArbitrationMechanismDropdown
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300),
      ),
    ];
  }

  List<Widget> _buildDeliveryForm(
    ThemeData theme,
    SmartContractCreationState state,
  ) {
    return [
      CustomTextField(
        key: const ValueKey('dep'),
        title: translate.departure_point,
        hint: translate.hint_departure_point,
        text: state.selectedDeparturePoint,
        onChanged: (value) {
          _cubit.departurePointChanged(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('dest'),
        title: translate.destination_point,
        hint: translate.hint_destination_point,
        text: state.selectedDestinationPoint,
        onChanged: (value) {
          _cubit.destinationPointChanged(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('cargo'),
        title: translate.cargo_weight,
        hint: translate.enter_cargo_weight,
        text: state.cargoWeight,
        onChanged: (value) {
          _cubit.changeCargoWeight(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDatePicker(
        title: translate.shipment_date,
        choosedDateTime: state.shipmentDate ?? DateTime.now(),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectShipmentDate(value);
          }
        },
        translate: translate,
        theme: theme,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDatePicker(
        title: translate.arrival_date,
        choosedDateTime: state.arrivalDate ?? DateTime.now(),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectArrivalDate(value);
          }
        },
        translate: translate,
        theme: theme,
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('ins'),
        title: translate.insurance,
        hint: translate.hint_insurance,
        text: state.insurance,
        onChanged: (value) {
          _cubit.changeInsuranse(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      AnimatedCrossFade(
        firstChild: CustomDropdown(
          title: translate.arbitration_mechanism,
          hint: state.selectedArbitrationMechanism ??
              translate.arbitration_mechanism_not_selected,
          dropdownValues: state.arbitrationMechanismList!,
          onChanged: (value) {
            if (value != null) {
              if (value == translate.own_version) {
                setState(() {
                  isArbitrationMechanismDropdown = false;
                });
              } else {
                _cubit.selectArbitrationMechanism(value);
              }
            }
          },
        ),
        secondChild: CustomTextField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              _cubit.selectArbitrationMechanism(value);
            }
          },
          title: translate.arbitration_mechanism,
          hint: translate.enter_own_arbitration_mechanism,
        ),
        crossFadeState: isArbitrationMechanismDropdown
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300),
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('r_name'),
        title: translate.driver_name,
        hint: translate.hint_driver_name,
        text: state.driverName,
        onChanged: (value) {
          _cubit.changeDriverName(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        key: const ValueKey('r_cont'),
        title: translate.driver_number,
        hint: translate.hint_driver_number,
        text: state.driverContact,
        onChanged: (value) {
          _cubit.changeDriverContact(value);
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDropdown(
        title: translate.payment_type,
        hint: state.selectedPaymentType ?? translate.select_payment_type,
        dropdownValues: state.listPaymentTypes!,
        onChanged: (value) {
          if (value != null) {
            if (value == translate.prepayment) {
              setState(() {
                isPrepayment = true;
              });
            } else {
              setState(() {
                isPrepayment = false;
              });
            }

            _cubit.selectPaymentType(value);
          }
        },
      ),
      const SizedBox(
        height: 10,
      ),
      AnimatedCrossFade(
        firstChild: CustomTextField(
          title: translate.prepayment_amount,
          hint: translate.hint_prepayment_amount,
          text: state.prepaymentAmount,
          onChanged: (value) {
            _cubit.changePrepaymentAmoount(value);
          },
        ),
        secondChild: const SizedBox.shrink(),
        crossFadeState:
            isPrepayment ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(
          milliseconds: 300,
        ),
      ),
    ];
  }

  Widget _buildSaveButton(ThemeData theme) {
    return CustomConfirmButton(
      onTap: () {
        _cubit.createSmartContract();
      },
      theme: theme,
      title: translate.create_smart_contract,
    );
  }

  Widget _buildSomethingWentWrong() {
    return const Center(child: CircularProgressIndicator());
  }
}
