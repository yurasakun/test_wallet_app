// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  static String m0(formattedNumber) => "\$${formattedNumber} Available";

  static String m1(formattedNumber) => "\$${formattedNumber}";

  static String m2(month) => "You`ve paid your ${month} balance.";

  static String m3(separate) => "Pending${separate}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "approvedTitle": MessageLookupByLibrary.simpleMessage("Approved"),
        "availableBalance": m0,
        "cardBalance": MessageLookupByLibrary.simpleMessage("Card Balance"),
        "currentBalance": m1,
        "dailyPointTitle": MessageLookupByLibrary.simpleMessage("Daily Points"),
        "paymentDueDescription": m2,
        "paymentDueTitle":
            MessageLookupByLibrary.simpleMessage("No Payment Due"),
        "pendingTitle": m3,
        "percentageValue": MessageLookupByLibrary.simpleMessage("3%"),
        "titleTransaction":
            MessageLookupByLibrary.simpleMessage("Latest Transactions"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
        "totalTitle": MessageLookupByLibrary.simpleMessage("Total"),
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday")
      };
}
