import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_view.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_view.dart';
import 'package:blocnod_smart_contracts_ui/pages/main_nav_bar.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/money_page.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/smart_contract_creation/smart_contract_creation_view.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/user_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/helpers/locale_changer.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/contracts_repository.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';

class InitializationController {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  void init() {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    initializeDateFormatting();
    getIt<ContractsRepository>().init();
    getIt<ContractsController>().init();
    getIt<UserRepository>().init();
    getIt<UserController>().init();
    getIt<LocaleChanger>().init();
  }

  GoRouter initializeRouter() {
    return GoRouter(
      initialLocation: '/login',
      navigatorKey: _rootNavigatorKey,
      routes: <RouteBase>[
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return NoTransitionPage(
              child: MainNavigationBar(
                location: state.fullPath ?? '',
                child: child,
              ),
            );
          },
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) {
                return const HomePageView();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'money',
                  builder: (context, state) {
                    return const MoneyPageView();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'contract',
                      builder: (context, state) {
                        return const SmartContractCreationView();
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return const AuthPageView();
          },
        )
      ],
    );
  }
}
