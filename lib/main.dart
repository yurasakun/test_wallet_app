import 'package:flutter/material.dart';

import 'app/locator.dart';
import 'app/wallet_app.dart';

void main() {
  Locator.initial();
  runApp(const WalletApp());
}

