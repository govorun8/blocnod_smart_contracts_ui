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

  /// `Departure point`
  String get departure_point {
    return Intl.message(
      'Departure point',
      name: 'departure_point',
      desc: '',
      args: [],
    );
  }

  /// `Destination point`
  String get destination_point {
    return Intl.message(
      'Destination point',
      name: 'destination_point',
      desc: '',
      args: [],
    );
  }

  /// `Departure point address`
  String get hint_departure_point {
    return Intl.message(
      'Departure point address',
      name: 'hint_departure_point',
      desc: '',
      args: [],
    );
  }

  /// `Destination address`
  String get hint_destination_point {
    return Intl.message(
      'Destination address',
      name: 'hint_destination_point',
      desc: '',
      args: [],
    );
  }

  /// `Cargo weight`
  String get cargo_weight {
    return Intl.message(
      'Cargo weight',
      name: 'cargo_weight',
      desc: '',
      args: [],
    );
  }

  /// `Enter cargo weight`
  String get enter_cargo_weight {
    return Intl.message(
      'Enter cargo weight',
      name: 'enter_cargo_weight',
      desc: '',
      args: [],
    );
  }

  /// `Arrival date`
  String get arrival_date {
    return Intl.message(
      'Arrival date',
      name: 'arrival_date',
      desc: '',
      args: [],
    );
  }

  /// `Shipment date`
  String get shipment_date {
    return Intl.message(
      'Shipment date',
      name: 'shipment_date',
      desc: '',
      args: [],
    );
  }

  /// `Insurance`
  String get insurance {
    return Intl.message(
      'Insurance',
      name: 'insurance',
      desc: '',
      args: [],
    );
  }

  /// `Enter insurance`
  String get hint_insurance {
    return Intl.message(
      'Enter insurance',
      name: 'hint_insurance',
      desc: '',
      args: [],
    );
  }

  /// `Driver's full name`
  String get driver_name {
    return Intl.message(
      'Driver\'s full name',
      name: 'driver_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter driver's full name`
  String get hint_driver_name {
    return Intl.message(
      'Enter driver\'s full name',
      name: 'hint_driver_name',
      desc: '',
      args: [],
    );
  }

  /// `Driver's contact`
  String get driver_number {
    return Intl.message(
      'Driver\'s contact',
      name: 'driver_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter driver's contact`
  String get hint_driver_number {
    return Intl.message(
      'Enter driver\'s contact',
      name: 'hint_driver_number',
      desc: '',
      args: [],
    );
  }

  /// `Payment type`
  String get payment_type {
    return Intl.message(
      'Payment type',
      name: 'payment_type',
      desc: '',
      args: [],
    );
  }

  /// `Select payment type`
  String get select_payment_type {
    return Intl.message(
      'Select payment type',
      name: 'select_payment_type',
      desc: '',
      args: [],
    );
  }

  /// `Prepayment`
  String get prepayment {
    return Intl.message(
      'Prepayment',
      name: 'prepayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment after delivery`
  String get payment_after {
    return Intl.message(
      'Payment after delivery',
      name: 'payment_after',
      desc: '',
      args: [],
    );
  }

  /// `Prepayment amount`
  String get prepayment_amount {
    return Intl.message(
      'Prepayment amount',
      name: 'prepayment_amount',
      desc: '',
      args: [],
    );
  }

  /// `Enter prepayment amount`
  String get hint_prepayment_amount {
    return Intl.message(
      'Enter prepayment amount',
      name: 'hint_prepayment_amount',
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
