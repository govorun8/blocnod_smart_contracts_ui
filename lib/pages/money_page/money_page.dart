import 'package:blocnod_smart_contracts_ui/components/custom_confirm_button.dart';
import 'package:blocnod_smart_contracts_ui/components/smart_contract_tile.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/money_page_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/money_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MoneyPageView extends StatefulWidget {
  const MoneyPageView({super.key});

  @override
  State<MoneyPageView> createState() => MoneyPageViewState();
}

class MoneyPageViewState extends State<MoneyPageView> {
  S translate = getIt<S>();
  final _cubit = MoneyPageCubit();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Material(
      color: theme.canvasColor,
      child: BlocProvider(
        create: (context) => _cubit..init(),
        child: BlocBuilder<MoneyPageCubit, MoneyPageState>(
          builder: (context, state) {
            return state.maybeMap(
                inited: (value) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CustomConfirmButton(
                          onTap: () {
                            GoRouter.of(context).go('/money/contract');
                          },
                          theme: theme,
                          title: translate.new_smart_contract,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          alignment: Alignment.topLeft,
                          child: Text(
                            translate.your_contracts,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: value.contractsList.length,
                            itemBuilder: (context, index) {
                              return SmartContractTile(
                                theme: theme,
                                smartContract: value.contractsList[index],
                                translate: translate,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => const SizedBox.shrink());
          },
        ),
      ),
    );
  }
}
