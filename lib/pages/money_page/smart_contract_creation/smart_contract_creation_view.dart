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

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: _buildForm(theme, state),
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

    widgets.add(
      const SizedBox(
        height: 50,
      ),
    );

    return widgets;
  }

  List<Widget> _buildRentForm(
    ThemeData theme,
    SmartContractCreationState state,
  ) {
    return [
      CustomTextField(
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
        onChanged: (value) {
          _cubit.changeRentalPrice(value);
        },
        title: 'Arenda rub',
        hint: state.rentalPrice ?? 'rental',
      ),
      const SizedBox(
        height: 10,
      ),
      CustomTextField(
        onChanged: (value) {
          _cubit.changeDeposit(value);
        },
        title: 'zalog',
        hint: state.rentalPrice ?? 'zalog',
      ),
      const SizedBox(
        height: 10,
      ),
      CustomDatePicker(
        title: 'platezh',
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
        title: 'dogovor',
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
        title: 'UtilitiesPayment',
        theme: theme,
        selectedState: state.selectedUtilitiesPayment ?? false,
        onChanged: (value) {
          _cubit.changeUtilitiesPayment(value);
        },
      ),
      CustomSwitchButton(
        title: 'Жизнь с животными',
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
          onChanged: (value) {
            _cubit.selectArbitrationMechanism(value);
          },
          title: translate.arbitration_mechanism,
          hint: translate.enter_own_arbitration_mechanism,
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
    List<Widget> widgets = [];
    if (state.pointsList != null && state.pointsList!.isNotEmpty) {
      widgets.add(
        CustomDropdown(
          title: translate.delivery_point,
          hint: state.selectedPoint ?? translate.delivery_point_hint,
          dropdownValues: state.pointsList!,
          onChanged: (value) {
            if (value != null) {
              _cubit.selectContructor(value);
            }
          },
        ),
      );
    }
    return widgets;
  }

  Widget _buildSomethingWentWrong() {
    return const Center(child: CircularProgressIndicator());
  }
}
