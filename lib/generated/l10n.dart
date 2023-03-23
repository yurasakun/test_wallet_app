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

  /// `Card Balance`
  String get cardBalance {
    return Intl.message(
      'Card Balance',
      name: 'cardBalance',
      desc: '',
      args: [],
    );
  }

  /// `${formattedNumber}`
  String currentBalance(Object formattedNumber) {
    return Intl.message(
      '\$$formattedNumber',
      name: 'currentBalance',
      desc: '',
      args: [formattedNumber],
    );
  }

  /// `${formattedNumber} Available`
  String availableBalance(Object formattedNumber) {
    return Intl.message(
      '\$$formattedNumber Available',
      name: 'availableBalance',
      desc: '',
      args: [formattedNumber],
    );
  }

  /// `Daily Points`
  String get dailyPointTitle {
    return Intl.message(
      'Daily Points',
      name: 'dailyPointTitle',
      desc: '',
      args: [],
    );
  }

  /// `No Payment Due`
  String get paymentDueTitle {
    return Intl.message(
      'No Payment Due',
      name: 'paymentDueTitle',
      desc: '',
      args: [],
    );
  }

  /// `You've paid your {month} balance.`
  String paymentDueDescription(String month) {
    return Intl.message(
      'You`ve paid your $month balance.',
      name: 'paymentDueDescription',
      desc: '',
      args: [month],
    );
  }

  /// `Latest Transactions`
  String get titleTransaction {
    return Intl.message(
      'Latest Transactions',
      name: 'titleTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Pending{separate}`
  String pendingTitle(String separate) {
    return Intl.message(
      'Pending$separate',
      name: 'pendingTitle',
      desc: '',
      args: [separate],
    );
  }

  /// `Approved`
  String get approvedTitle {
    return Intl.message(
      'Approved',
      name: 'approvedTitle',
      desc: '',
      args: [],
    );
  }

  /// `3%`
  String get percentageValue {
    return Intl.message(
      '3%',
      name: 'percentageValue',
      desc: '',
      args: [],
    );
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message(
      'Tomorrow',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get totalTitle {
    return Intl.message(
      'Total',
      name: 'totalTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
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
