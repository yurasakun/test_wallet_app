import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:test_wallet_app/app/color.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';
import '../../../generated/l10n.dart';
import '../controller/controllers.dart';
import 'card_transaction.dart';

class ListTransactions extends StatelessWidget {
  const ListTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadingController = LoadingTransactionsController();
    final localization = S.of(context);
    loadingController.loadValue();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            localization.titleTransaction,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ),
        Container(
          height: 460,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: WalletColors.whiteColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15))),
          child: Observer(builder: (_) {
            final future = loadingController.loadedObjects;
            if (future == null) {
              return const Center(
                child: CircularProgressIndicator(
                  color: WalletColors.textColor,
                ),
              );
            }
            if (future.status.index == FutureStatus.pending.index) {
              return const Center(
                child: CircularProgressIndicator(
                  color: WalletColors.textColor,
                ),
              );
            }
            if (future.status.index == FutureStatus.fulfilled.index) {
              final List<TransactionItem> transactions = future.result;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ...transactions
                        .map((final transaction) => CardTransaction(
                              transaction: transaction,
                            )),
                  ],
                ),
              );
            }
            return const SizedBox();
          }),
        )
      ],
    );
  }
}
