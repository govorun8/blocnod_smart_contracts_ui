// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "address_hint":
            MessageLookupByLibrary.simpleMessage("City, street, house..."),
        "contractor_not_selected":
            MessageLookupByLibrary.simpleMessage("Contructor not selected"),
        "delivery_point":
            MessageLookupByLibrary.simpleMessage("Select the delivery point"),
        "delivery_point_hint":
            MessageLookupByLibrary.simpleMessage("Point not selected"),
        "fonts_test": MessageLookupByLibrary.simpleMessage("Fonts test"),
        "home_page_title": MessageLookupByLibrary.simpleMessage("Home page"),
        "money_page_title": MessageLookupByLibrary.simpleMessage("Money page"),
        "new_smart_contract":
            MessageLookupByLibrary.simpleMessage("New smart contract"),
        "rent": MessageLookupByLibrary.simpleMessage("Rent"),
        "rental_period": MessageLookupByLibrary.simpleMessage("Rental period"),
        "select_contract_type":
            MessageLookupByLibrary.simpleMessage("Select contract type"),
        "select_contractor":
            MessageLookupByLibrary.simpleMessage("Select contructor"),
        "sign_in": MessageLookupByLibrary.simpleMessage("sign in"),
        "smart_contract_page_title":
            MessageLookupByLibrary.simpleMessage("Smart contract creation"),
        "transportation":
            MessageLookupByLibrary.simpleMessage("Transportation"),
        "type_not_selected":
            MessageLookupByLibrary.simpleMessage("Type not selected"),
        "your_address": MessageLookupByLibrary.simpleMessage("Your address")
      };
}
