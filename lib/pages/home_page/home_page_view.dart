import 'package:blocnod_smart_contracts_ui/components/custom_confirm_button.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_dropdown.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_user_info.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
                return const SizedBox(
                  width: 50,
                  child: CircularProgressIndicator(),
                );
              },
              inited: (value) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildUserCard(theme, value.user),
                      _buildLanguageDropdown(
                          theme, value.languageList, value.selectedLanguage),
                      _buildWatchMySmartContracts(theme, value.contractsList),
                    ],
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

  Widget _buildUserCard(ThemeData theme, User user) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: theme.dividerColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInfoRow(title: translate.id, value: user.id, theme: theme),
          CustomInfoRow(title: translate.name, value: user.name, theme: theme),
          CustomInfoRow(
              title: translate.email, value: user.email, theme: theme),
          CustomInfoRow(
            title: translate.balance,
            value: user.balance.toString(),
            theme: theme,
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageDropdown(
    ThemeData theme,
    List<String> listLanguage,
    String selectedLanguage,
  ) {
    return CustomDropdown(
        title: translate.select_language,
        hint: selectedLanguage,
        dropdownValues: listLanguage,
        onChanged: (value) {
          if (value == 'Russian') {
            _cubit.changeLocale('ru');
          } else if (value == 'English') {
            _cubit.changeLocale('en');
          }
        });
  }

  Widget _buildWatchMySmartContracts(
      ThemeData theme, List<SmartContractFromBack> smartContracts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomConfirmButton(
          title: translate.contract_on_approval,
          theme: theme,
          onTap: () {
            GoRouter.of(context).push('/approval');
          },
        ),
      ],
    );
  }
}
