import 'package:flutter/material.dart';
import 'package:test_wallet_app/app/color.dart';

import '../../../app/utils/random_value.dart';
import '../../../generated/l10n.dart';
import 'card.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final balance = RandomValue.getBalance();
    final localization = S.of(context);
    return CardWallet(
      height: 100,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localization.cardBalance,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
          Text(
            localization.currentBalance(balance.toStringAsFixed(2)),
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
          ),
          Text(
            localization.availableBalance((1500 - balance).toStringAsFixed(2)),
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: WalletColors.textColor),
          )
        ],
      ),
    );
  }
}
