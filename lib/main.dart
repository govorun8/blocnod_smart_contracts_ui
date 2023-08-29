import 'package:blocnod_smart_contracts_ui/custom_theme.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/initialization_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/helpers/locale_changer.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
  late Locale? currentLocale;
  ValueNotifier<Locale?> localeVL = getIt<LocaleChanger>().locale;
  @override
  void initState() {
    localeVL.addListener(() {
      setState(() {
        currentLocale = localeVL.value;
      });
    });
    super.initState();
  }

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
      locale: localeVL.value,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
