import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class LocaleChanger {
  final ValueNotifier<Locale?> localeVL = ValueNotifier<Locale?>(null);

  ValueNotifier<Locale?> get locale => localeVL;

  set changeLocale(String localeTag) {
    localeVL.value = Locale(localeTag);
  }

  void init() {
    final curentLocale = Intl.getCurrentLocale();
    localeVL.value = Locale(curentLocale);
  }
}
