import 'package:blocnod_smart_contracts_ui/utilities/controllers/pre_filed_fields_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class LocaleChanger {
  final ValueNotifier<Locale?> localeVL = ValueNotifier<Locale?>(null);
  late final PreSelectedFieldsController preSelectedFieldsController;

  ValueNotifier<Locale?> get locale => localeVL;

  set changeLocale(String localeTag) {
    preSelectedFieldsController.setString('locale', localeTag);
    localeVL.value = Locale(localeTag);
  }

  void init() async {
    preSelectedFieldsController = getIt<PreSelectedFieldsController>();

    String? curentLocaleSP =
        await preSelectedFieldsController.getString('locale');
    if (curentLocaleSP != null) {
      localeVL.value = Locale(curentLocaleSP);
    } else {
      final curentLocale = Intl.getCurrentLocale();
      localeVL.value = Locale(curentLocale);
    }
  }
}
