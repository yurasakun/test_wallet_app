import 'package:flutter/material.dart';
import 'package:test_wallet_app/app/color.dart';

import '../../../app/utils/value_formatter.dart';
import '../../../generated/l10n.dart';
import 'card.dart';

class PaymentDue extends StatelessWidget {
  const PaymentDue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final month = FormatsValue.dateToMonth(DateTime.now());
    final localization = S.of(context);
    return CardWallet(
        height: double.infinity,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  localization.paymentDueTitle,
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                Text(
                  localization.paymentDueDescription(month),
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: WalletColors.textColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  color: WalletColors.textColor,
                  borderRadius: BorderRadius.circular(75),
                ),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    size: 35,
                    color: WalletColors.blackColor,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
