// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fonts test`
  String get fonts_test {
    return Intl.message(
      'Fonts test',
      name: 'fonts_test',
      desc: '',
      args: [],
    );
  }

  /// `sign in`
  String get sign_in {
    return Intl.message(
      'sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Home page`
  String get home_page_title {
    return Intl.message(
      'Home page',
      name: 'home_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Money page`
  String get money_page_title {
    return Intl.message(
      'Money page',
      name: 'money_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Smart contract creation`
  String get smart_contract_page_title {
    return Intl.message(
      'Smart contract creation',
      name: 'smart_contract_page_title',
      desc: '',
      args: [],
    );
  }

  /// `New smart contract`
  String get new_smart_contract {
    return Intl.message(
      'New smart contract',
      name: 'new_smart_contract',
      desc: '',
      args: [],
    );
  }

  /// `Select contract type`
  String get select_contract_type {
    return Intl.message(
      'Select contract type',
      name: 'select_contract_type',
      desc: '',
      args: [],
    );
  }

  /// `Type not selected`
  String get type_not_selected {
    return Intl.message(
      'Type not selected',
      name: 'type_not_selected',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get rent {
    return Intl.message(
      'Rent',
      name: 'rent',
      desc: '',
      args: [],
    );
  }

  /// `Transportation`
  String get transportation {
    return Intl.message(
      'Transportation',
      name: 'transportation',
      desc: '',
      args: [],
    );
  }

  /// `Select contructor`
  String get select_contractor {
    return Intl.message(
      'Select contructor',
      name: 'select_contractor',
      desc: '',
      args: [],
    );
  }

  /// `Contructor not selected`
  String get contractor_not_selected {
    return Intl.message(
      'Contructor not selected',
      name: 'contractor_not_selected',
      desc: '',
      args: [],
    );
  }

  /// `Your address`
  String get your_address {
    return Intl.message(
      'Your address',
      name: 'your_address',
      desc: '',
      args: [],
    );
  }

  /// `City, street, house...`
  String get address_hint {
    return Intl.message(
      'City, street, house...',
      name: 'address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Select the delivery point`
  String get delivery_point {
    return Intl.message(
      'Select the delivery point',
      name: 'delivery_point',
      desc: '',
      args: [],
    );
  }

  /// `Point not selected`
  String get delivery_point_hint {
    return Intl.message(
      'Point not selected',
      name: 'delivery_point_hint',
      desc: '',
      args: [],
    );
  }

  /// `Rental period`
  String get rental_period {
    return Intl.message(
      'Rental period',
      name: 'rental_period',
      desc: '',
      args: [],
    );
  }

  /// `Court`
  String get court {
    return Intl.message(
      'Court',
      name: 'court',
      desc: '',
      args: [],
    );
  }

  /// `Penalty`
  String get penalty {
    return Intl.message(
      'Penalty',
      name: 'penalty',
      desc: '',
      args: [],
    );
  }

  /// `Your own version`
  String get own_version {
    return Intl.message(
      'Your own version',
      name: 'own_version',
      desc: '',
      args: [],
    );
  }

  /// `Arbitration mechanism`
  String get arbitration_mechanism {
    return Intl.message(
      'Arbitration mechanism',
      name: 'arbitration_mechanism',
      desc: '',
      args: [],
    );
  }

  /// `Arbitration mechanism not selected`
  String get arbitration_mechanism_not_selected {
    return Intl.message(
      'Arbitration mechanism not selected',
      name: 'arbitration_mechanism_not_selected',
      desc: '',
      args: [],
    );
  }

  /// `Enter own arbitration mechanism`
  String get enter_own_arbitration_mechanism {
    return Intl.message(
      'Enter own arbitration mechanism',
      name: 'enter_own_arbitration_mechanism',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
