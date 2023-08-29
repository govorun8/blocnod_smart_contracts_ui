import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_state.dart';

import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/helpers/locale_changer.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.loading());

  final ContractsController contractsController = getIt<ContractsController>();
  final UserRepository userController = getIt<UserRepository>();
  final LocaleChanger localeChanger = getIt<LocaleChanger>();
  final S translate = getIt<S>();

  Future<void> init() async {
    final user = userController.user;

    final userSmartContracts =
        await contractsController.getUserSmartContracts(user.id);

    final selectedLocaleTag = Intl.getCurrentLocale();
    String selectedLanguage = '';
    switch (selectedLocaleTag) {
      case ('en'):
        selectedLanguage = 'English';
        break;
      case ('ru'):
        selectedLanguage = 'Russian';
        break;
    }

    final List<String> languages = ['English', 'Russian'];

    if (userSmartContracts != null) {
      emit(HomePageState.inited(
        user: user,
        contractsList: userSmartContracts,
        selectedLanguage: selectedLanguage,
        languageList: languages,
      ));
    } else {
      emit(HomePageState.loading());
    }
  }

  Future<void> changeLocale(String languageTag) async {
    state.maybeMap(
        inited: (value) {
          String selectedLanguage = '';
          switch (languageTag) {
            case ('en'):
              selectedLanguage = 'English';
              break;
            case ('ru'):
              selectedLanguage = 'Russian';
              break;
          }
          localeChanger.changeLocale = languageTag;

          emit(HomePageState.inited(
            user: value.user,
            contractsList: value.contractsList,
            selectedLanguage: selectedLanguage,
            languageList: value.languageList,
          ));
        },
        orElse: () {});
  }
}
