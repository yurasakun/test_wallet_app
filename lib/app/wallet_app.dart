import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:test_wallet_app/app/router/router.dart';

import '../generated/l10n.dart';

class WalletApp extends StatelessWidget {
  const WalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      routes: routes,
      builder: (context, child) => ResponsiveWrapper.builder(child,
          defaultScaleFactor: MediaQuery.of(context).size.width / 400),
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
