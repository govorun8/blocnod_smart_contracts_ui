import 'package:blocnod_smart_contracts_ui/components/smart_contract_tile.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/contracts_to_confirm.dart/contracts_to_confirm_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/contracts_to_confirm.dart/contracts_to_confirm_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContractsToConfirmView extends StatefulWidget {
  const ContractsToConfirmView({super.key});

  @override
  State<ContractsToConfirmView> createState() => ContractsToConfirmViewState();
}

class ContractsToConfirmViewState extends State<ContractsToConfirmView> {
  final S translate = getIt<S>();
  final _cubit = ContractsToConfirmCubit();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return BlocProvider<ContractsToConfirmCubit>(
      create: (context) => _cubit..init(),
      child: Material(
        child: BlocBuilder<ContractsToConfirmCubit, ContractsToConfirmState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (value) {
                return const Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              inited: (value) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  color: theme.canvasColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        translate.confirmation_contracts,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 10),
                      _buildListConfirmationContracts(
                        theme,
                        value.contractsToConfirmationList,
                      ),
                    ],
                  ),
                );
              },
              error: (value) {
                return Center(
                  child: Text(
                    translate.no_confirmation_contracts,
                    style: theme.textTheme.bodyLarge,
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildListConfirmationContracts(
    ThemeData theme,
    List<SmartContractFromBack> listContracts,
  ) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listContracts.length,
        itemBuilder: (context, index) {
          return SmartContractTile(
            theme: theme,
            smartContract: listContracts[index],
            translate: translate,
            showConfirmButton: true,
            onTapConfirm: () {
              _cubit.confirmContract(listContracts[index].id);
            },
            onTapReject: () {
              _cubit.rejectContract(listContracts[index].id);
            },
          );
        },
      ),
    );
  }
}
