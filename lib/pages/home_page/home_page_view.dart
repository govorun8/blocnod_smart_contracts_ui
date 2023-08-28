import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView> {
  S translate = getIt<S>();
  final _cubit = HomePageCubit();
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return BlocProvider<HomePageCubit>(
      create: (context) => _cubit..init(),
      child: Material(
        child: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            return state.maybeMap(
              loading: (value) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/home/only_logo.svg'),
                    Text(
                      translate.fonts_test,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                );
              },
              inited: (value) {
                return _buildContractsList(value.contractsList, theme);
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContractsList(
      List<SmartContract> listContracts, ThemeData theme) {
    return ListView.builder(
      itemCount: listContracts.length,
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          height: 50,
          child: Text(
            listContracts[index].id,
            style: theme.textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}
