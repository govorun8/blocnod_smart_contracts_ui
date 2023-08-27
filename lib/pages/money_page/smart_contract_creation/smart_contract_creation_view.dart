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
  final _cubit = SmartContractCreationCubit();

  @override
  Widget build(BuildContext context) {
    S translate = getIt<S>();
    ThemeData theme = Theme.of(context);

    return BlocProvider(
      create: (context) => _cubit..init(),
      child: Material(
          color: Colors.white,
          child: BlocBuilder<SmartContractCreationCubit,
              SmartContractCreationState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                      onChanged: (value) {},
                      hint: 'Поле',
                      title: 'Поле 1',
                    ),
                    CustomTextField(
                      onChanged: (value) {},
                      hint: 'Поле',
                      title: 'Поле 2',
                    ),
                    CustomTextField(
                      onChanged: (value) {},
                      hint: 'Поле',
                      title: 'Поле 3',
                    ),
                    CustomTextField(
                      onChanged: (value) {},
                      hint: 'Поле',
                      title: 'Поле 4',
                    ),
                    CustomDropdown(
                      title: 'dropdown',
                      hint: 'no selected value',
                      dropdownValues: ['1', '2'],
                      onChanged: (value) {},
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
