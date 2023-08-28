import 'package:blocnod_smart_contracts_ui/components/custom_date_picker.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_dropdown.dart';
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

            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: _buildForm(theme, state),
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
      widgets.add(CustomDropdown(
        title: translate.select_contract_type,
        hint: state.selectedType ?? translate.type_not_selected,
        dropdownValues: state.typeList!,
        onChanged: (value) {
          if (value != null) {
            _cubit.selectType(value);
          }
        },
      ));
    }
    if (state.contructorList != null && state.contructorList!.isNotEmpty) {
      widgets.add(CustomDropdown(
        title: translate.select_contractor,
        hint: state.selectedContructor ?? translate.contractor_not_selected,
        dropdownValues: state.contructorList!,
        onChanged: (value) {
          if (value != null) {
            _cubit.selectContructor(value);
          }
        },
      ));
    }

    if (state.selectedType == translate.rent) {
      widgets.addAll(_buildRentForm(theme, state));
    } else if (state.selectedType == translate.transportation) {
      widgets.addAll(_buildDeliveryForm(theme, state));
    }

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
      CustomDatePicker(
        title: translate.rental_period,
        choosedDateTime: state.selectedTimeInterval ??
            DateTimeRange(
              start: DateTime.now(),
              end: DateTime.now().add(
                const Duration(
                  days: 60,
                ),
              ),
            ),
        onChangedDate: (value) {
          if (value != null) {
            _cubit.selectedDateTimeRange(value);
          }
        },
        translate: translate,
        theme: theme,
      )
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
