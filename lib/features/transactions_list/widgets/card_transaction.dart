import 'package:flutter/material.dart';
import 'package:test_wallet_app/app/color.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';

import '../../../app/utils/random_value.dart';
import '../../../app/utils/value_formatter.dart';
import '../../../generated/l10n.dart';

class CardTransaction extends StatelessWidget {
  const CardTransaction({Key? key, required this.transaction})
      : super(key: key);
  final TransactionItem transaction;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/transaction',
            arguments: transaction,
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: RandomValue.getColor()),
                    child: Icon(
                      RandomValue.getIcon(),
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 15),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 210,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    transaction.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "${transaction.type == TypeTransaction.Credit ? "" : "+"}${localization.currentBalance(transaction.total)}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Icon(
                                Icons.navigate_next,
                                size: 30,
                                color: WalletColors.textColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 180,
                              child: Text(
                                (transaction.pending ? localization.pendingTitle(" - ") : "") +
                                    transaction.description,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: WalletColors.textColor),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (transaction.type == TypeTransaction.Credit)
                              Container(
                                height: 20,
                                width: 30,
                                decoration: const BoxDecoration(
                                    color: WalletColors.pageColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child:  Center(
                                  child: Text(
                                    localization.percentageValue,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: WalletColors.textColor),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 5, bottom: 10),
                        child: Text(
                          (transaction.authUser != null
                                  ? "${transaction.authUser} - "
                                  : "") +
                              FormatsValue.formatDate(transaction.date, localization),
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: WalletColors.textColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 1,
                color: WalletColors.textColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
