import 'package:blocnod_smart_contracts_ui/custom_theme.dart';
import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_view.dart';
import 'package:blocnod_smart_contracts_ui/pages/main_nav_bar.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPageView(),
        '/nav_bar': (context) => MainNavigationBar(),
      },
    );
  }
}
