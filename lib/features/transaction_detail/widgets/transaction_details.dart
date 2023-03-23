import 'package:flutter/material.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';

import '../../../app/color.dart';
import '../../../app/utils/value_formatter.dart';
import '../../../generated/l10n.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key, required this.transact})
      : super(key: key);
  final TransactionItem transact;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Center(
      child: Column(
        children: [
          Text(
            localization.currentBalance(transact.total),
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 60),
          ),
          Text(
            (transact.authUser != null ? "${transact.authUser} - " : "") +
                transact.name,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: WalletColors.textColor),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            FormatsValue.formatDate(transact.date, localization),
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: WalletColors.textColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: WalletColors.whiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transact.pending
                        ? localization.pendingTitle("")
                        : localization.approvedTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: WalletColors.blackColor),
                  ),
                  Text(
                    transact.description,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: WalletColors.textColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: WalletColors.textColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        localization.totalTitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: WalletColors.blackColor),
                      ),
                      Text(
                        localization.currentBalance(transact.total),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: WalletColors.blackColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
