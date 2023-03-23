import 'package:flutter/material.dart';

import '../../../app/color.dart';
import '../widgets/widgets.dart';

class TransactionListScreen extends StatelessWidget {
  const TransactionListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WalletColors.pageColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 210,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CurrentBalance(),
                        DailyPoint(),
                      ],
                    ),
                    const PaymentDue(),
                  ],
                ),
              ),
              const ListTransactions(),
            ],
          ),
        )));
  }
}
