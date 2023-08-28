import 'package:blocnod_smart_contracts_ui/custom_theme.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/initialization_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  InitializationController().init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  final router = InitializationController().initializeRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      title: 'Blocnod app',
      theme: CustomTheme.lightTheme,
      routerConfig: router,
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
